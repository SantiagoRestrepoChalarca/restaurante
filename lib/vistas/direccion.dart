import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';

class direccion extends StatelessWidget {
  const direccion({Key? key}) : super(key: key);

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
              titleText("DIRECCION LOSGAMERS"),
              Spacer(),
              subTitleText("la Mota "),
              subTitleText("calle 23a #43b-62"),
              subTitleText("San Javier"),
              subTitleText("Carrera 34 #32-52"),
              subTitleText("Manrique"),
              subTitleText("Carrera 45 #75-73"),
              
              Spacer(flex: 2),
              Image(image: AssetImage("assets/direccion.png")),
              Spacer(flex: 2),
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
