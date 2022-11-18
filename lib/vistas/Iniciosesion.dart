import 'package:flutter/material.dart';
import 'package:restaurante/vistas/General.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class Iniciosesion extends StatelessWidget {
  const Iniciosesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 1440,
          height: 1080,
          decoration: BoxDecoration(
            color: const Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image(image: AssetImage("assets/Iniciosesion.png")),
              titleText("PLAY"),
              SizedBox(height: 4),
              subTitleText("CONECTATE CON NOSOTROS"),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Usuario",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Contraseña",
                  ),
                ),
              ),
              Spacer(flex: 2),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return General();
                    },
                  ),
                );
              }, Color.fromARGB(255, 224, 187, 20), "SIGN IN"),
              Spacer(flex: 1),
              largeButton(() {
                Navigator.pop(context);
              }, Color.fromARGB(255, 224, 187, 20), "REGRESAR"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
