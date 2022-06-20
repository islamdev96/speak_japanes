import 'package:flutter/material.dart';
import 'package:speak_japanes/models/jp_to_en.dart';

import '../components/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<JpToEn> famlymembers = const [
    JpToEn(
        sound: 'grand father.wav',
        image: '.dart_tool/assets/images/family_members/family_father.png',
        jpName: 'otousan',
        enName: 'father'),
    JpToEn(
        sound: 'mother.wav',
        image: '.dart_tool/assets/images/family_members/family_mother.png',
        jpName: '	haha',
        enName: 'mother'),
    JpToEn(
        sound: 'son.wav',
        image: '.dart_tool/assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'san'),
    JpToEn(
        sound: 'daughter.wav',
        image: '.dart_tool/assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'daughter'),
    JpToEn(
        sound: 'grand father.wav',
        image: '.dart_tool/assets/images/family_members/family_grandfather.png',
        jpName: 'ojiisan',
        enName: 'grandfather'),
    JpToEn(
        sound: 'grand mother.wav',
        image: '.dart_tool/assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'grandmother'),
    JpToEn(
        sound: 'younger brohter.wav',
        image:
            '.dart_tool/assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'younger brohter'),
    JpToEn(
        sound: 'younger sister.wav',
        image:
            '.dart_tool/assets/images/family_members/family_younger_sister.png',
        jpName: '	imouto',
        enName: 'younger sister'),
    JpToEn(
        sound: 'older bother.wav',
        image:
            '.dart_tool/assets/images/family_members/family_older_brother.png',
        jpName: 'oniisan',
        enName: 'older bother'),
    JpToEn(
        sound: 'older sister.wav',
        image:
            '.dart_tool/assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'older sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff483229),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: famlymembers.length,
        itemBuilder: (context, index) {
          return Item(
            number: famlymembers[index],
            color: const Color(0xff528031),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
