import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountButton extends StatefulWidget {
  int counter = 2;

  @override
  State<CountButton> createState() => _CountButtonState();
}

class _CountButtonState extends State<CountButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          color: Color(0xFFF7FF88), borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () => setState(() {
                widget.counter == widget.counter--;
              }),
              child: Icon(Icons.remove, color: Color(0xFF000000), size: 18,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${widget.counter}',
              style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () => setState(() {
                widget.counter++;
              }),
              child: Icon(Icons.add, color: Color(0xFF000000), size: 18),
            ),
          ),
        ],
      ),
    );
  }
}
