import 'package:facebook_ui/Util/colors.dart';
import 'package:flutter/material.dart';

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          side: BorderSide(
            width: 3.0,
            color: Palette.facebookBlue.withOpacity(0.8),
          ),
          textStyle: const TextStyle(
            color: Palette.facebookBlue,
          )),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: ((bounds) =>
                Palette.createRoomGradient.createShader(bounds)),
            child: const Icon(
              Icons.video_call,
              size: 35.0,
              color: Palette.whiteColor,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          const Text('Create \n Room')
        ],
      ),
    );
  }
}
