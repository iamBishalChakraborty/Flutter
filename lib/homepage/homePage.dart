import 'package:flutter/material.dart';
import 'package:flutter_learn/drawer.dart';
import 'package:flutter_learn/homepage/changeNameCard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State < HomePage > {

  TextEditingController _textEditingController = TextEditingController();
  var myText = "Change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
      getData();
  }

  getData() async{
    var response = await http.get(url);
    data = jsonDecode(response.body);
    setState(() {
      
    });



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
            child: data != null ? 
            ListView.builder(itemBuilder: (context, index){
              return ListTile(
                title: Text(data[index]["title"]),
                subtitle: Text("ID : ${data[index]["id"]}"),
                leading: Image.network(data[index]["url"]),
              );
            }, 
            itemCount: data.length,
            )
             : Center(child: CircularProgressIndicator(),),
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

