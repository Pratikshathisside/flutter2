import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          automaticallyImplyLeading: true,

          //`true` if you want Flutter to automatically add Back Button when needed,
          //or `false` if you want to force your own back button every where
          title: Text('Swabhimaan'),
          leading: IconButton(
            color: Color.fromARGB(255, 238, 233, 239),
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/back.png"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            // ignore: prefer_const_literals_to_create_immutables

            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), //add border radius here
                child: Image.asset(
                    'images/we.png'), //add image location here //add image location here
              ),
              Text(
                'WELCOME BACK!',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.cyan[800],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 10,
                ),
                color: Color.fromARGB(109, 58, 220, 212),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter User ID',
                    ),
                  ),
                  leading: Icon(Icons.person),
                  iconColor: Color.fromARGB(255, 81, 79, 79),
                  onTap: () {},
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 10,
                ),
                color: Color.fromARGB(109, 58, 220, 212),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                    ),
                  ),
                  leading: Icon(Icons.keyboard_alt_outlined),
                  iconColor: Color.fromARGB(255, 81, 79, 79),
                  onTap: () {},
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 40, width: 150),
                child: ElevatedButton(
                  child: Text(
                    "Login",
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan[800],
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
                height: 10,
              ),
              Text(
                'OR',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Color.fromARGB(255, 65, 180, 200),
                ),
              ),
              SizedBox(
                width: 20,
                height: 10,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 40, width: 150),
                child: ElevatedButton(
                  child: Text(
                    "Login With",
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan[800],
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Wrap(
                  runAlignment: WrapAlignment.center,
                  spacing: 30, // space between two icons
                  alignment: WrapAlignment.center,

                  children: <Widget>[
                    Icon(Icons.call,
                        color: Color.fromARGB(255, 23, 156, 205), size: 50.0),

                    // icon-1
                    Icon(Icons.mail,
                        color: Color.fromARGB(255, 24, 181, 212), size: 50.0),

                    Icon(Icons.facebook,
                        color: Color.fromARGB(255, 8, 23, 120), size: 50.0),
                    Icon(Icons.apple,
                        color: Color.fromARGB(255, 71, 71, 72),
                        size: 50.0) // icon-2
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
