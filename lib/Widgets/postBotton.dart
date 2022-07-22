import 'package:facebook_ui/Util/colors.dart';
import 'package:flutter/material.dart';

class PostBotton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;
  const PostBotton(
      {Key? key, required this.icon, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Palette.whiteColor,
        child: InkWell(
          onTap: () => onTap(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(
                  width: 4.0,
                ),
                Text(label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
