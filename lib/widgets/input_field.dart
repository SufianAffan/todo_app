import 'package:flutter/material.dart';

class InputField extends StatefulWidget {

  final String? hintText;
  final double? width;
  final TextEditingController? controller;
  final bool? isPassword;
  final Icon? icon;
  final Widget? suffixIcon;

   const InputField({Key? key, this.hintText, this.width, this.controller, this.isPassword, this.icon, this.suffixIcon}) : super(key: key);

   @override
  _InputFieldState createState() => _InputFieldState();
}
class _InputFieldState extends State<InputField> {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10 ),
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.transparent,
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword ?? false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.white70),
         icon: widget.icon,
         // labelStyle: ,
          suffixIcon: widget.suffixIcon,
          border:  const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white
            )
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          )
        ),
    );
  }
}
