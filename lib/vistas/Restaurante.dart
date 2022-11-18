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
        width: 1440,
        height: 1080,
        decoration: BoxDecoration(
          color: const Color(0xFFF2E8DF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Spacer(flex: 2),
            titleText("BIENVENIDOS A LA FELICIDAD"),
            Spacer(flex: 1),
            Center(
              child: titleText("RESTAURANTE LOSGAMERS"),
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
              Color.fromARGB(255, 224, 187, 20),
              "INICIAR SESION",
            ),
            Spacer(flex: 2),
            subTitleText("¿Nuevo usuario?"),
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
              Color.fromARGB(255, 224, 187, 20),
              "REGISTRARSE",
            ),
            Spacer(flex: 1),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
