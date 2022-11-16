import 'package:flutter/material.dart';
import 'package:restaurante/widgets/wcWidgets.dart';


class pedido extends StatelessWidget {
  const pedido({Key? key}) : super(key: key);

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
              titleText("Este es el pedido del cliente 1"),
              Spacer(flex: 2),
              Image(image: AssetImage("assets/pedido.png")),
              Spacer(flex: 2),
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
