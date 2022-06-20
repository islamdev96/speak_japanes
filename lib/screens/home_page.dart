import 'package:flutter/material.dart';
import 'package:speak_japanes/screens/colors_page.dart';
import 'package:speak_japanes/screens/family_members_page.dart';
import 'package:speak_japanes/screens/numbers_page.dart';

import '../components/gategory_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff483229),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffF99430),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff528031),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff7C3FA1),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }),
              );
            },
          ),
          Category(
            text: 'Phrasses',
            color: const Color(0xff46A5CA),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
