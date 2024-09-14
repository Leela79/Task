import 'package:assessment/pages/scrollable_page.dart';
import 'package:flutter/material.dart';

import '../components/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Cards",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: CardPage(
        imagepath: 'lib/images/garden.jpg',
        sub_imagepath: 'lib/images/garden_1.png',
        text: "GardenScapes",
        sub_text: "Puzzle . Match 3 advanture",
        color: Colors.blueGrey,
        height: 300,
        width: 300,
        borderRadius: 15,
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScrollablePage()));
        },
      ),
    );
  }
}
