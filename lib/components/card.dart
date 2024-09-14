import 'package:flutter/material.dart';
class CardPage extends StatefulWidget {
  final String imagepath;
  final String sub_imagepath;
  final String text;
  final String sub_text;
  final Color color;
  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback onTap;
  CardPage({
    super.key,
    required this.imagepath,
    required this.sub_imagepath,
    required this.text,
    required this.sub_text,
    required this.color,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.onTap
  });

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Center(
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(widget.imagepath,),
                const SizedBox(height: 30),
                Row(
                  children: [
                    CircleAvatar(
                        child: Image.asset(widget.sub_imagepath)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.text,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(widget.sub_text,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.star,size: 10,),
                              Icon(Icons.star,size: 10,),
                              Icon(Icons.star,size: 10,),
                              Icon(Icons.star,size: 10,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
