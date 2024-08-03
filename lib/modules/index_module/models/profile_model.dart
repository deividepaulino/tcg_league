class ProfileModel {
  final String userProfileName;
  final String userName;
  final WinDefeatDraw wdd;
  final String profilePicturePath;

  ProfileModel({
    required this.userProfileName,
    required this.userName,
    required this.wdd,
    required this.profilePicturePath,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      userProfileName: json['user_profile_name'],
      userName: json['user_name'],
      wdd: WinDefeatDraw.fromJson(json['wdd']),
      profilePicturePath: json['profile_picture_path'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_profile_name': userProfileName,
      'user_name': userName,
      'wdd': wdd.toJson(),
      'profile_picture_path': profilePicturePath,
    };
  }

  factory ProfileModel.empty() {
    return ProfileModel(
      userProfileName: 'dvd',
      userName: '@dvd',
      wdd: WinDefeatDraw.empty(),
      profilePicturePath: '',
    );
  }
}

class WinDefeatDraw {
  final int wins;
  final int defeats;
  final int draws;

  WinDefeatDraw({
    required this.wins,
    required this.defeats,
    required this.draws,
  });

  factory WinDefeatDraw.fromJson(Map<String, dynamic> json) {
    return WinDefeatDraw(
      wins: json['wins'],
      defeats: json['defeats'],
      draws: json['draws'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'wins': wins,
      'defeats': defeats,
      'draws': draws,
    };
  }

  factory WinDefeatDraw.empty() {
    return WinDefeatDraw(wins: 0, defeats: 0, draws: 0);
  }
}
