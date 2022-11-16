import 'package:flutter/material.dart';
import 'package:restaurante/vistas/General.dart';
import 'package:restaurante/vistas/registrarse.dart';
import 'package:restaurante/widgets/wcWidgets.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class registrarse extends StatelessWidget {
  const registrarse({Key? key}) : super(key: key);

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
              Image(image: AssetImage("assets/registro.png")),
              Spacer(flex: 2),
              titleText("Registro Gamer"),
              SizedBox(height: 8),
              subTitleText("las mejores experiencias"),
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
              }, Color(0xFF41F2C0), "Sign In"),
              Spacer(flex: 1),
              largeButton(() {
                Navigator.pop(context);
              }, Color(0xFF41F2C0), "Regresar"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
