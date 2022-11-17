import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';
import 'package:restaurante/vistas/menu.dart';
import 'package:restaurante/vistas/direccion.dart';
import 'package:restaurante/vistas/reserva.dart';
import 'package:restaurante/vistas/domicilio.dart';
import 'package:restaurante/vistas/Iniciosesion.dart';

class General extends StatelessWidget {
  const General({Key? key}) : super(key: key);

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
              Image(image: AssetImage("assets/cliente.png")),
              titleText("Aqui esta todo lo que un Gamer necesita"),
              Spacer(),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return menu();
                    },
                  ),
                );
              }, Color.fromARGB(255, 224, 187, 20), "Menu"),
              Spacer(),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return direccion();
                    },
                  ),
                );
              }, Color.fromARGB(255, 224, 187, 20), "Dirección"),
              Spacer(),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return reserva();
                    },
                  ),
                );
              }, Color.fromARGB(255, 224, 187, 20), "Reserva"),
              Spacer(),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return domicilio();
                    },
                  ),
                );
              }, Color.fromARGB(255, 224, 187, 20), "Domicilio"),
              Spacer(),
              largeButton(() {
                Navigator.pop(context);
              }, Color.fromARGB(255, 224, 187, 20), "Regresar"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
