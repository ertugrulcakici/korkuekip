import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import 'package:seo/seo.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool hoverEnabled;
  const MyText(this.text, {super.key, this.style, this.hoverEnabled = false});

  @override
  Widget build(BuildContext context) {
    return Seo.text(
        text: text,
        child: hoverEnabled
            ? HoverOver(
                translateXAxis: 10,
                animationDurationInMilliseconds: 100,
                builder: (isHovered) => _textWidget,
              )
            : _textWidget);
  }

  Widget get _textWidget => Text(
        text,
        style: style,
      );
}
