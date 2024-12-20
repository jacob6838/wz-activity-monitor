import 'package:flutter/material.dart';
import 'package:wzam/ui/styles/text_styles.dart';

class WZAMText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign textAlign;

  const WZAMText.styleOne(this.text, {this.textAlign = TextAlign.left}) : style = style_one;
  const WZAMText.styleTwo(this.text, {this.textAlign = TextAlign.left}) : style = style_two;
  const WZAMText.styleThree(this.text, {this.textAlign = TextAlign.left}) : style = style_three;
  const WZAMText.styleFour(this.text, {this.textAlign = TextAlign.left}) : style = style_four;
  const WZAMText.styleFive(this.text, {this.textAlign = TextAlign.left}) : style = style_five;
  const WZAMText.body(this.text, {this.textAlign = TextAlign.left, this.style = style_body});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}

class ClickableText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Function()? onTap;

  ClickableText({
    Key? key,
    required this.text,
    required this.onTap,
    this.style = underlined_style_two,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(text, style: style),
    );
  }
}
