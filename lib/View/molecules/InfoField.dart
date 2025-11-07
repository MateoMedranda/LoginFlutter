import 'package:flutter/material.dart';
import 'package:login_medranda/Theme/color_schema.dart';
import 'package:login_medranda/View/atoms/TextAtom.dart';


class InfoField extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const InfoField({
    super.key,
    required this.icon,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 38,
          color: ColorApp.primary,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: title),
              ContentText(text: content),
            ],
          ),
        ),
      ],
    );
  }
}
