import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class pago extends StatelessWidget {
  const pago({Key? key}) : super(key: key);

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
              titleText("PAGO ELECTRONICO"),
              Spacer(flex: 2),
              Image(image: AssetImage("assets/pago.png")),
              Spacer(flex: 2),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Elija Su Web de Pago",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "PAGO TO",
                  ),
                ),
              ),
              Spacer(),
              largeButton(() {}, Color.fromARGB(255, 224, 187, 20), "Pagar"),
              Spacer(flex: 2),
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
