import 'package:flutter/material.dart';
import 'package:wzam/ui/styles/screen_size.dart';

class WZAMInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final void Function()? trailingTapped;
  final bool password;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  WZAMInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context) * 0.8,
      child: TextField(
          controller: controller,
          style: TextStyle(height: 1),
          obscureText: password,
          onChanged: (value) {
            controller.text = value;
          },
          decoration: InputDecoration(
            labelText: placeholder == '' ? null : placeholder,
            hintText: placeholder == '' ? null : placeholder,
            contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            filled: true,
            prefixIcon: leading,
            suffixIcon: trailing != null
                ? GestureDetector(
                    onTap: trailingTapped,
                    child: trailing,
                  )
                : null,
          )),
    );
  }
}