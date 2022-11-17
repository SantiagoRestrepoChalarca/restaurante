import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class reserva extends StatelessWidget {
  const reserva({Key? key}) : super(key: key);

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
              titleText("Reserva LosGamers"),
              Spacer(flex: 2),
              Image(image: AssetImage("assets/reserva.png")),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Elija la sede",
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Elija el dia de su interes",
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Elija la hora",
                  ),
                ),
              ),
              Spacer(flex: 2),
              largeButton(() {}, Color.fromARGB(255, 224, 187, 20), "Reservar"),
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
