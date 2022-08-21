import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurante/vistas/inicioMeseros.dart';
import 'package:restaurante/widgets/wcWidgets.dart';
import 'package:restaurante/vistas/clientes.dart';
import 'package:restaurante/vistas/chef.dart';
import 'package:restaurante/vistas/iniciochef.dart';

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
            titleText("ChalaTv Restaurante"),
            Spacer(flex: 1),
            subTitleText("Esta es la pagina principal del restaurante"),
            Spacer(flex: 2),
            const Image(image: AssetImage("assets/logo.png")),
            Spacer(flex: 2),
            largeButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return inicioMeseros();
                    },
                  ),
                );
              },
              Color(0xFF41F2C0),
              "Meseros",
            ),
            Spacer(flex: 1),
            largeButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return clientes();
                    },
                  ),
                );
              },
              Color(0xFF41F2C0),
              "Cliente",
            ),
            Spacer(flex: 1),
            largeButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return iniciochef();
                    },
                  ),
                );
              },
              Color(0xFF41F2C0),
              "Chef",
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
