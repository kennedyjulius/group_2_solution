import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: 
            Text("Kennedy Mutugi Julius"), 
            accountEmail: Text("kennedymutugi@111"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("assets/pic.jpeg"),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              image: DecorationImage(
                image: AssetImage("assets/1a.jpg"),
                fit: BoxFit.cover,),

                )
            ),

            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Add Exams"),
              onTap: () => print("Upload Tapped"),
            ),

            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: () => print("share tapped"),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Student Exams"),
              onTap: () => print("Notified ..."),
            ),
            //Adding a Divider 
            Divider(
              
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => print("Setings Tapped"),
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              onTap: () => print("You have logged out"),
            ),
        ]
            ),
    );
    
  }
}