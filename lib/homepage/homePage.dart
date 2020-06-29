import 'package:flutter/material.dart';
import 'package:flutter_learn/drawer.dart';
import 'package:flutter_learn/homepage/changeNameCard.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State < HomePage > {

  TextEditingController _textEditingController = TextEditingController();
  var myText = "Change Me";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('My New Application'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
            child: Card(
              child: SingleChildScrollView(
                child: ChangeNameCard(myText: myText, textEditingController: _textEditingController),
              ),
            ),
        ),
      ),
      floatingActionButton:
      FloatingActionButton(onPressed: (){
        setState(() {
              myText = _textEditingController.text;
        });
      }, child: Icon(Icons.add)),
      drawer: MyDrawer(),
    );
  }
}

