import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:speak_japanes/models/jp_to_en.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.number,
      required this.color,
      required this.itemType})
      : super(key: key);

  final JpToEn number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF4DB), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioCache player =
                  AudioCache(prefix: ".dart_tool/assets/sounds/$itemType/");
              player.play(number.sound);
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
