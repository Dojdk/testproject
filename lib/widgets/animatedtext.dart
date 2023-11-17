import 'package:flutter/material.dart';
import 'package:testproject/widgets/animationwrapper.dart';

class CustomAnimatedText extends StatefulWidget {
  final String text;
  final String subtext;
  final TextAlign textAlign;
  final Color? textColor;
  final double? fontSize;
  const CustomAnimatedText(
      {super.key,
      required this.text,
      required this.subtext,
      required this.textAlign,
      this.textColor,
      this.fontSize});

  @override
  State<CustomAnimatedText> createState() => _CustomAnimatedTextState();
}

class _CustomAnimatedTextState extends State<CustomAnimatedText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedWrapper(
      child: RichText(
        textAlign: widget.textAlign,
        text: TextSpan(
          style: TextStyle(
            color: widget.textColor ?? Colors.white,
            fontSize: 18,
          ),
          children: [
            TextSpan(
                text: widget.text,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: "\n${widget.subtext}",
              style: TextStyle(fontSize: widget.fontSize ?? 18),
            ),
          ],
        ),
      ),
    );
  }
}
