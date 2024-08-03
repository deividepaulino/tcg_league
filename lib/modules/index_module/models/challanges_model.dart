class ChallangeModel {
  final String challangeName;
  final DateTime challangeInitialDate;
  final DateTime challangeFinalDate;
  final String challangeType;
  final String challangeStatus;
  final int totalParticipants;
  final int userPosition;
  final int userPoints;
  final int userWins;
  final int userDefeats;
  final int userDraws;
  final String userDeck;

  ChallangeModel({
    required this.challangeName,
    required this.challangeInitialDate,
    required this.challangeFinalDate,
    required this.challangeType,
    required this.challangeStatus,
    required this.totalParticipants,
    required this.userPosition,
    required this.userPoints,
    required this.userWins,
    required this.userDefeats,
    required this.userDraws,
    required this.userDeck,
  });

  factory ChallangeModel.fromJson(Map<String, dynamic> json) {
    return ChallangeModel(
      challangeName: json['challange_name'],
      challangeInitialDate: DateTime.parse(json['challange_initial_date']),
      challangeFinalDate: DateTime.parse(json['challange_final_date']),
      challangeType: json['challange_type'],
      challangeStatus: json['challange_status'],
      totalParticipants: json['total_participants'],
      userPosition: json['user_position'],
      userPoints: json['user_points'],
      userWins: json['user_wins'],
      userDefeats: json['user_defeats'],
      userDraws: json['user_draws'],
      userDeck: json['user_deck'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'challange_name': challangeName,
      'challange_initial_date': challangeInitialDate.toIso8601String(),
      'challange_final_date': challangeFinalDate.toIso8601String(),
      'challange_type': challangeType,
      'challange_status': challangeStatus,
      'total_participants': totalParticipants,
      'user_position': userPosition,
      'user_points': userPoints,
      'user_wins': userWins,
      'user_defeats': userDefeats,
      'user_draws': userDraws,
      'user_deck': userDeck,
    };
  }

  factory ChallangeModel.empty() {
    return ChallangeModel(
      challangeName: '',
      challangeInitialDate: DateTime.now(),
      challangeFinalDate: DateTime.now(),
      challangeType: '',
      challangeStatus: '',
      totalParticipants: 0,
      userPosition: 0,
      userPoints: 0,
      userWins: 0,
      userDefeats: 0,
      userDraws: 0,
      userDeck: '',
    );
  }
}
