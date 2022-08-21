import 'package:flutter/material.dart';
import 'package:restaurante/vistas/chef.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class orden1 extends StatelessWidget {
  const orden1({Key? key}) : super(key: key);

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
              Spacer(flex: 2),
              titleText("Pronto el chef nos dira como va la orden"),
              Spacer(flex: 2),
              Image(image: AssetImage("assets/orden.png")),
              Spacer(flex: 2),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return chef();
                    },
                  ),
                );
              }, Color(0xFF41F2C0), "Verificacion del chef"),
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
