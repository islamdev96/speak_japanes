import 'package:flutter/material.dart';
import 'package:speak_japanes/components/item.dart';
import 'package:speak_japanes/models/jp_to_en.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<JpToEn> numbers = const [
    JpToEn(
        sound: 'number_one_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    JpToEn(
        sound: 'number_two_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two'),
    JpToEn(
        sound: 'number_three_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three'),
    JpToEn(
        sound: 'number_four_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four'),
    JpToEn(
        sound: 'number_five_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five'),
    JpToEn(
        sound: 'number_six_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six'),
    JpToEn(
        sound: 'number_seven_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven'),
    JpToEn(
        sound: 'number_eight_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    JpToEn(
        sound: 'number_nine_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_nine.png',
        jpName: 'kyuu',
        enName: 'nine'),
    JpToEn(
        sound: 'number_ten_sound.mp3',
        image: '.dart_tool/assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff483229),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            number: numbers[index],
            color: const Color(0xffF99430),
            itemType: 'numbers',
          );
        },
      ),
    );
  }
}
