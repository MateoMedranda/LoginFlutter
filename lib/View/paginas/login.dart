import 'package:flutter/material.dart';
import 'package:login_medranda/Theme/background_theme.dart';
import 'package:login_medranda/View/atoms/InputAtom.dart';
import '../../Controller/login_controller.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _loginViewState();
}

class _loginViewState extends State<LoginView> {
  String loginErrorString = "";
  final userCrtl = TextEditingController();
  final passwordCrtl = TextEditingController();
  LoginController controller = LoginController();

  void _login(){
    final username = userCrtl.text;
    final password = passwordCrtl.text;

    if(controller.validateLogin(username, password)){
      userCrtl.text = "";
      passwordCrtl.text = "";
      setState(() {
        loginErrorString = "";
      });
      Navigator.pushNamed(context, '/profile');
    }else{
      loginError();
    }
  }

  void loginError(){
    setState(() {
      loginErrorString = "Usuario o contraseña incorrectos";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BackgroundApp.principalDegraded,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 100),
              Image.asset('assets/logo.png', height: 80, fit: BoxFit.cover,),
              SizedBox(height: 90),
              Text('Ingresa con tu usuario y contraseña'),
              SizedBox(height: 20),
              MyTextField(
                controller: userCrtl,
                label: "Usuario",
                hint: "Escribe tu nombre",
                icon: Icons.person,
              ),
              SizedBox(height: 40),
              MyTextField(
                controller: passwordCrtl,
                label: "Password",
                hint: "Escribe tu contraseña",
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 40),
                ),
                child: Text("Iniciar Sesión"),
              ),
              SizedBox(height: 20),
              Text(loginErrorString, style: TextStyle(color: Colors.red),),
            ],
          ),
        ),
      ),
    );
  }
}
