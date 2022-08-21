import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class direccion extends StatelessWidget {
  const direccion({Key? key}) : super(key: key);

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
              titleText("Dirección ChalaTv"),
              Spacer(),
              subTitleText("Calle cualquiera # 123 "),
              subTitleText("Calle cualquiera # 234 "),
              subTitleText("Calle cualquiera # 345 "),
              Spacer(flex: 2),
              Image(image: AssetImage("assets/direccion.png")),
              Spacer(flex: 2),
              subTitleText("Calle cualquiera # 456 "),
              subTitleText("Calle cualquiera # 567 "),
              subTitleText("Calle cualquiera # 678 "),
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
