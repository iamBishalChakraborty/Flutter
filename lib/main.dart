import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My Application',
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State < HomePage > {

  TextEditingController _textEditingController = TextEditingController();
  var myText = "Change Me";

  @override
  void initState() {
    // TODO: implement initState
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
                child: Column(
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
                ),
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
      drawer: Drawer(
        child: ListView(
          children: < Widget > [
            UserAccountsDrawerHeader(
              accountName: Text("Bishal Chakraborty"),
              accountEmail: Text("cbishal6@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://iambishalchakraborty.github.io/assets/IMG_1286p.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Email"),
              subtitle: Text("cbishal6@gmail.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
    );
  }
}