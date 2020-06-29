import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      );
  }
}