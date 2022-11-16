import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

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
              titleText("Menu ChalaTv"),
              Spacer(flex: 2),
              Image(
                image: AssetImage("assets/menu.png"),
                width: 500,
                height: 500,
              ),
              Spacer(flex: 2),
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
