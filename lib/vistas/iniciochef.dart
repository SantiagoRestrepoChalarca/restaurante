import 'package:flutter/material.dart';
import 'package:restaurante/vistas/chef.dart';
import 'package:restaurante/vistas/pedidosclientes.dart';
import 'package:restaurante/widgets/wcWidgets.dart';
import 'package:restaurante/vistas/pedido.dart';

class iniciochef extends StatelessWidget {
  const iniciochef({Key? key}) : super(key: key);

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
              Image(image: AssetImage("assets/logochef.png")),
              Spacer(flex: 2),
              titleText("Sign In"),
              SizedBox(height: 8),
              subTitleText("Conéctate para informar sobre el pedido"),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Usuario",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Contraseña",
                  ),
                ),
              ),
              Spacer(flex: 2),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return pedidosclientes();
                    },
                  ),
                );
              }, Color(0xFF41F2C0), "Sign In"),
              Spacer(flex: 1),
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
