import 'package:flutter/material.dart';

import '../Util/colors.dart';

class CreatePostTextButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String text;
  final Color color;
  const CreatePostTextButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => onPressed(),
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(text, style: const TextStyle(color: Palette.blackColor),),
    );
  }
}
