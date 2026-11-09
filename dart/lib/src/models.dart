/// Response models for the Magic 8-Ball API.

/// API Response wrapper.
class Magic8ballResponse {
  final String status;
  final dynamic error;
  final Magic8ballData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  Magic8ballResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory Magic8ballResponse.fromJson(Map<String, dynamic> json) => Magic8ballResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? Magic8ballData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Magic 8-Ball API.

class Magic8ballData {
  String? question;
  String? answer;
  String? type;
  String? certainty;
  num? shakeCount;
  String? timestamp;

  Magic8ballData({
    this.question,
    this.answer,
    this.type,
    this.certainty,
    this.shakeCount,
    this.timestamp,
  });

  factory Magic8ballData.fromJson(Map<String, dynamic> json) => Magic8ballData(
      question: json['question'],
      answer: json['answer'],
      type: json['type'],
      certainty: json['certainty'],
      shakeCount: json['shake_count'],
      timestamp: json['timestamp'],
    );
}

class Magic8ballRequest {
  String? question;

  Magic8ballRequest({
    this.question,
  });

  Map<String, dynamic> toJson() => {
      if (question != null) 'question': question,
    };
}
