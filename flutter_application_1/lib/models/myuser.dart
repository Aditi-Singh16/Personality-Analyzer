class MyUser {
  final String uid;
  String? name;
  String? email;


  MyUser({
    required this.uid,
    this.email, 
    this.name
    });

  Map<String,dynamic> toMap() {
    return {
      'uid': uid,
      'user_name': name,
      'email':email
    };
  }
}
