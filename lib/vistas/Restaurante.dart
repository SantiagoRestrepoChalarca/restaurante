import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/Iniciosesion.dart';
import 'package:restaurante/widgets/wcWidgets.dart';
import 'package:restaurante/vistas/registrarse.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280,
        height: 620,
        decoration: BoxDecoration(
          color: const Color(0xFFF2E8DF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Spacer(flex: 2),
            subTitleText("Bienvenidos a la felicidad"),
            Spacer(flex: 1),
            Center(
              child: Text("Restaurante LosGamers"),
            ),
            Spacer(flex: 2),
            const Image(image: AssetImage("assets/logo.png")),
            Spacer(flex: 2),
            largeButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Iniciosesion();
                    },
                  ),
                );
              },
              Color(0xFF41F2C0),
              "Iniciar sesion",
            ),
            Spacer(flex: 1),
            largeButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return registrarse();
                    },
                  ),
                );
              },
              Color(0xFF41F2C0),
              "Registrarse",
            ),
            Spacer(flex: 1),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
