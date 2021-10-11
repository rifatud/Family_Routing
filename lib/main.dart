import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyCard.dart';

void main() => runApp(FamilyRouting());

class FamilyRouting extends StatelessWidget {
  const FamilyRouting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Family Routing'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              MyCard(
                name: "Md Rifat Uddin",
                text_under_title: "Self",
                background_color: Colors.blue,
                email: 'rifat@family.com',
                bio: "I am a Computer Science Engineer and the yougest one in the family",
              ),
              MyCard(
                name: "Samir",
                text_under_title: "Brother",
                background_color: Colors.blueAccent,
                email: 'samir@family.com',
                bio: "I am a Lawyer and second yougest one in the family",
              ),
              MyCard(
                name: "Nishat",
                text_under_title: "Sister",
                background_color: Colors.blueGrey,
                email: 'nishat@family.com',
                bio: "I am a Doctor and the eldest among the siblings",
              ),
              MyCard(
                name: "Mom",
                text_under_title: "Mom",
                background_color: Colors.lightBlue,
                email: 'mom@family.com',
                bio: "Hello I am mom, and the super power in the family",
              ),
              MyCard(
                name: "Dad",
                text_under_title: "Dad",
                background_color: Colors.lightBlueAccent,
                email: 'dad@family.com',
                bio: "I am the Big Lawyer and someone who always helps if someone need help I am always there no matter what",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
