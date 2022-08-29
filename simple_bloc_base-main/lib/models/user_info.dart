class User {
  final String? name;
  final String? email;
  final String? phone;
  final String? birthday;
  final String? avatar;

  const User({
    this.name,
    this.email,
    this.phone,
    this.birthday,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      birthday: json['birthday'],
      avatar: json['avatar'],
    );
  }
}
