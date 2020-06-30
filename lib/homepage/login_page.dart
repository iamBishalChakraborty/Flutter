import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/bg.jpeg", fit: BoxFit.cover, height: 500, color: Colors.black.withOpacity(0.5), colorBlendMode: BlendMode.darken, ),
          Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Form(child: Column(
                      children: <Widget>[
                        TextFormField(decoration: InputDecoration(
                          hintText: "Enter User Name",
                          labelText: "User Name"
                        ),),
                        SizedBox(height: 10,),
                        TextFormField(obscureText: true, decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),),
                          SizedBox(height: 20,),
                        RaisedButton(onPressed: (){
                          Navigator.pushNamed(context, "/home");
                        }, child: Text("Sign in", style: TextStyle(
                          fontSize: 16,
                        ),), textColor: Colors.white, color: Colors.blueAccent)
                      ],
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
        ],
      )
    );
    
  }
}