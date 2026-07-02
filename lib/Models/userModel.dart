class AppUser {
  final String? id;
  final String? username;
  final String? gender;
  final int? age;
  final DateTime? dob;

  const AppUser({this.id, this.username, this.gender, this.age, this.dob});

  AppUser copyWith({String? id, String? username, String? gender, int? age, DateTime? dob}) {
    return AppUser(id: id ?? this.id, username: username ?? this.username, gender: gender ?? this.gender, age: age ?? this.age, dob: dob ?? this.dob);
  }

  /// from database, shared preference
  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(id: json['id'] ?? '', username: json['username'] ?? '', gender: json['gender'] ?? '', age: json['age'] ?? 0, dob: DateTime.parse(json['dob']));
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'username': username, 'gender': gender, 'age': age, 'dob': dob?.toIso8601String()};
  }
}
