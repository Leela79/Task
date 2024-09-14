import 'package:flutter/material.dart';

import '../components/card.dart';
class ScrollablePage extends StatefulWidget {
  const ScrollablePage({super.key});

  @override
  State<ScrollablePage> createState() => _ScrollablePageState();
}

class _ScrollablePageState extends State<ScrollablePage> {
  int _numberOfCards = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable Cards'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_drop_up),
            onPressed: () {
              setState(() {
                _numberOfCards++;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_drop_down_outlined),
            onPressed: () {
              // Remove a card when the button is pressed
              if (_numberOfCards > 0) {
                setState(() {
                  _numberOfCards--;
                });
              }
            },
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _numberOfCards,
        itemBuilder: (context,index){
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: CardPage(
                imagepath: 'lib/images/garden.jpg',
                sub_imagepath: 'lib/images/garden_1.png',
                text: "GardenScapes",
                sub_text:  "Puzzle . Match 3 advanture",
                color: Colors.blueGrey,
                height: 300,
                width: 300,
                borderRadius: 15,
                onTap: (){
                  Navigator.pop(context);
                }
            ),
          );
        },
      ),
    );
  }
}
