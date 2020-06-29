import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController textEditingController,
  }) : _textEditingController = textEditingController, super(key: key);

  final String myText;
  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: < Widget > [
        Image.asset("assets/bg.jpeg", fit: BoxFit.cover, height: 500, ),
        SizedBox(
          height: 20,
        ),
        Text(myText, style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ), ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: "Enter Anything",
                labelText: "Name",
                border: OutlineInputBorder()
              ),
            ),
        )
      ],
    );
  }
}