import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';
import 'package:restaurante/vistas/menu.dart';
import 'package:restaurante/vistas/direccion.dart';
import 'package:restaurante/vistas/descuentos.dart';
import 'package:restaurante/vistas/reserva.dart';
import 'package:restaurante/vistas/domicilio.dart';
import 'package:restaurante/vistas/pago.dart';

class clientes extends StatelessWidget {
  const clientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 280,
          height: 620,
          decoration: BoxDecoration(
            color: const Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image(image: AssetImage("assets/cliente.png")),
              Spacer(flex: 2),
              subTitleText("Aqui encontraran todo acerca del restaurante"),
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
              }, Color(0xFF41F2C0), "Menu"),
              Spacer(),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return descuentos();
                    },
                  ),
                );
              }, Color(0xFF41F2C0), "Descuentos"),
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
              }, Color(0xFF41F2C0), "Dirección"),
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
              }, Color(0xFF41F2C0), "Reserva"),
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
              }, Color(0xFF41F2C0), "Domicilio"),
              Spacer(),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return pago();
                    },
                  ),
                );
              }, Color(0xFF41F2C0), "Realizar pago"),
              Spacer(),
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
