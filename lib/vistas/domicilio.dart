import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';
import 'package:restaurante/vistas/pago.dart';

class domicilio extends StatelessWidget {
  const domicilio({Key? key}) : super(key: key);

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
              Spacer(flex: 2),
              titleText("DOMICILIOS LOSGAMERS"),
              Spacer(flex: 2),
              Image(image: AssetImage("assets/domicilio.png")),
              Spacer(flex: 2),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Elija su pedido",
                  ),
                ),
              ),
              Spacer(),
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
              }, Color.fromARGB(255, 224, 187, 20), "ENVIAR PEDIDO"),
              Spacer(),
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
