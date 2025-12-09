declare module '@apiverve/magic8ball' {
  export interface magic8ballOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface magic8ballResponse {
    status: string;
    error: string | null;
    data: Magic8-BallData;
    code?: number;
  }


  interface Magic8BallData {
      question:   string;
      answer:     string;
      type:       string;
      certainty:  string;
      shakeCount: number;
      timestamp:  Date;
  }

  export default class magic8ballWrapper {
    constructor(options: magic8ballOptions);

    execute(callback: (error: any, data: magic8ballResponse | null) => void): Promise<magic8ballResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: magic8ballResponse | null) => void): Promise<magic8ballResponse>;
    execute(query?: Record<string, any>): Promise<magic8ballResponse>;
  }
}
