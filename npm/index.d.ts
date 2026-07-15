declare module '@apiverve/magic8ball' {
  export interface magic8ballOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface magic8ballResponse {
    status: string;
    error: string | null;
    data: Magic8-BallData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface Magic8BallData {
      question:   null | string;
      answer:     null | string;
      type:       null | string;
      certainty:  null | string;
      shakeCount: number | null;
      timestamp:  Date | null;
  }

  export default class magic8ballWrapper {
    constructor(options: magic8ballOptions);

    execute(callback: (error: any, data: magic8ballResponse | null) => void): Promise<magic8ballResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: magic8ballResponse | null) => void): Promise<magic8ballResponse>;
    execute(query?: Record<string, any>): Promise<magic8ballResponse>;
  }
}
