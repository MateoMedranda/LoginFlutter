class User {
  final String name;
  final String lastName;
  final String username;
  final String password;

  User(this.name, this.lastName, this.username, this.password);

  String getName(){
    return name;
  }

  String getLastName(){
    return lastName;
  }

  String getUsername(){
    return username;
  }
}