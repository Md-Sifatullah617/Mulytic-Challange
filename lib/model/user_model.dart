class UserModel {
  String? name;
  String? email;
  String? password;
  String? phone;

  UserModel({this.name, this.email, this.password, this.phone});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
  }
}