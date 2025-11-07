import '../Model/user_Model.dart';

class LoginController {
  late User newUser;
  bool validateLogin(String username, String password){
    newUser = new User('Mateo', 'Medranda', username, password);
    if(username == "mdmedranda1" && password=="1234"){
      return true;
    }
    return false;
  }
}