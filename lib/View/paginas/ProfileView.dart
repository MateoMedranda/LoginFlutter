import 'package:flutter/material.dart';
import 'package:login_medranda/View/molecules/InfoField.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Perfil'),
      ),

      body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/profilePicture.jpg'),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    InfoField(
                      icon: Icons.person,
                      title: 'Nombre',
                      content: 'Mateo Medranda',
                    ),
                    SizedBox(height: 20),
                    InfoField(
                      icon: Icons.email,
                      title: 'Correo',
                      content: 'mdmedranda1@espe.edu.ec',
                    ),
                    SizedBox(height: 20),
                    InfoField(
                      icon: Icons.cake,
                      title: 'Fecha de Nacimiento',
                      content: '11-04-2004',
                    ),
                    SizedBox(height: 20),
                    InfoField(
                      icon: Icons.phone,
                      title: 'Teléfono',
                      content: '+593 98 018 1860',
                    ),
                    SizedBox(height: 20),
                    InfoField(
                      icon: Icons.link,
                      title: 'Linkedin',
                      content: 'www.linkedin.com/in/mateo-medranda',
                    ),
                  ],
                )
              ),
              SizedBox(height: 50),
              OutlinedButton(
                onPressed: () => Navigator.pop(context),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(300, 40),
                ),
                child: Text('Cerrar Sesión'),
              ),
            ],
          )
      ),
    );
  }
}