import 'package:flutter/material.dart';
import 'package:group_2_solution/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Welcome back..."),
              //SizedBox(width: 300),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notification_add_rounded),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      foregroundImage: AssetImage("assets/pic.jpeg"),
                    )
                  ]
                ),
              )
            ]
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.lightBlue,
                ),
                child: Center(
                  child: Text(
                    "SOME OF OUR EXAMS",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 250,
                
                width: double.maxFinite,
                child: ListView.builder(
                  
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                        color: Colors.amberAccent,
                        height: 200,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 50,
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                "assets/pic.jpeg",
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              right: 10,
                              
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Mathematics"),
                              ),
                            ),
                          ],
                        ),
                      ),
                  );
                 
                 },
                ),
              ),
              
              SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    "Comments",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Colors.blueAccent.shade100,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Card(
                              //color: Colors.pinkAccent.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                subtitle: Text("Kennedy Mutugi Julius"),
                                title: Text(
                                  "I enjoyed your services... ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                leading: CircleAvatar(
                                  foregroundImage: AssetImage("assets/1a.jpg"),
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.pinkAccent,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Add your comment',
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      print("You added your comment");
                    },
                    child: Text('Submit'),
                  ),
                ]
              ),
            ]
          ),
        ),
      ),
    );
  }
}
