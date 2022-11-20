import 'package:flutter/material.dart';
import 'package:restaurante/utils/custom_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.callback,
    required this.text,
  }) : super(key: key);

  final VoidCallback callback;
  final String text;
  @override
  Widget build(BuildContext context) {
    //Esto es solo un widget personalizado para los botones, ya que utilizo los mismos en todas las vistasx
    return TextButton(
      onPressed: callback,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(CustomColors.firebaseAmber),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: CustomColors.firebaseGrey,
        ),
      ),
    );
  }
}
