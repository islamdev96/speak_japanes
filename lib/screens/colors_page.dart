import 'package:flutter/material.dart';
import 'package:speak_japanes/components/item.dart';
import 'package:speak_japanes/models/jp_to_en.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<JpToEn> colors = const [
    JpToEn(
        sound: 'red.wav',
        image: '.dart_tool/assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    JpToEn(
        sound: 'green.wav',
        image: '.dart_tool/assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    JpToEn(
        sound: 'black.wav',
        image: '.dart_tool/assets/images/colors/color_black.png',
        jpName: 'Purakku',
        enName: 'black'),
    JpToEn(
        sound: 'gray.wav',
        image: '.dart_tool/assets/images/colors/color_gray.png',
        jpName: 'Gurei',
        enName: 'gray'),
    JpToEn(
        sound: 'brown.wav',
        image: '.dart_tool/assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    JpToEn(
        sound: 'white.wav',
        image: '.dart_tool/assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white'),
    JpToEn(
        sound: 'yellow.wav',
        image: '.dart_tool/assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow'),
    JpToEn(
        sound: 'dusty yellow.wav',
        image: '.dart_tool/assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff483229),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
            number: colors[index],
            color: const Color(0xff7C3FA1),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
