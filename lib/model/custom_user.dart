class CustomUser {
  //Esto no es más que un objeto al cual llenaremos de atributos
  String uid;
  String? email;
  String? age;
  String? name;
  String? userName;

  CustomUser({
    required this.uid,
    this.email,
    this.age,
    this.name,
    this.userName,
  });
}
