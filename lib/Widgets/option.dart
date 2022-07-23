import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  const Option(
      {Key? key, required this.icon, required this.color, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> {},
      child: Row(
        children: [
          Icon(icon, size: 38.0, color: color,),
          const SizedBox(width: 6.0,),
          Flexible(child: Text(label, style: const TextStyle(fontSize: 16.0),))
        ],
      ),
    );
  }
}
