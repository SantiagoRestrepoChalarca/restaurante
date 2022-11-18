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
              titleText("Menu Gamers"),
              Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Image.asset('assets/hamburguesa.png'),
                  ),
                  Center(
                    child: Image.asset('assets/perro.png'),
                  ),
                  Center(
                    child: Image.asset('assets/salchipapas.png'),
                  ),
                ],
              ),
              Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: titleText("Hamburguesa"),
                  ),
                  Center(
                    child: titleText("Perro"),
                  ),
                  Center(
                    child: titleText("Salchipapas"),
                  ),
                ],
              ),
              Spacer(flex: 2),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text("PoderEspecial 20k"),
                  ),
                  Center(
                    child: Text("LaAsesina 19k"),
                  ),
                  Center(
                    child: Text("Mastodonte 30k"),
                  ),
                ],
              ),
              
              Spacer(flex: 2),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text("DestrozaCraneos 22k"),
                  ),
                  Center(
                    child: Text("Asesinada 16k"),
                  ),
                  Center(
                    child: Text("Dinotrueno 20k"),
                  ),
                ],
              ),
              Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text("La Salvadora 14k"),
                  ),
                  Center(
                    child: Text("Perpetua 18k"),
                  ),
                  Center(
                    child: Text("WestCol 28k"),
                  ),
                ],
              ),
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
