import 'package:flutter/material.dart';

class InputFieldArea extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;
  final String labelText;
  final String errorText;

  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSubmitted;

  InputFieldArea({
    this.hint,
    this.obscure,
    this.icon,
    this.labelText,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return (Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.8,
            color: Colors.white24,
          ),
        ),
      ),
      child: TextField(
        obscureText: obscure,
        style: TextStyle(
          color: Colors.white,
        ),
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintText: hint,
          labelText: labelText,
          errorText: errorText,
          labelStyle: TextStyle(color: Colors.white),
          hintStyle: TextStyle(color: Colors.white30, fontSize: 15.0),
          contentPadding:
              EdgeInsets.only(top: 30.0, right: 30.0, bottom: 30.0, left: 5.0),
        ),
      ),
    ));
  }
}
