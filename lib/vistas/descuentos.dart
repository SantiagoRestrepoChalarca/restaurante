import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class descuentos extends StatelessWidget {
  const descuentos({Key? key}) : super(key: key);

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
              titleText("Descuentos ChalaTv"),
              Spacer(flex: 2),
              Image(image: AssetImage("assets/descuentos.png")),
              Spacer(flex: 2),
              titleText("Descuento 1"),
              Spacer(),
              subTitleText(
                  "Combo especialidad: Hamburguesa especial + refresco ------ 240 "),
              Spacer(),
              titleText("Descuento 2"),
              Spacer(),
              subTitleText("Combo botanas: Alitas x 10 + refresco ------ 90"),
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
