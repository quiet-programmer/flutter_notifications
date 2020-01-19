import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Notifications"),
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _showSnackBar() {
    final snackBar = SnackBar(
      content: Text("Hi SnackBar here"),
      action: SnackBarAction(
        label: "Okay",
        onPressed: () {},
      ),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

  void _showBottom() {

    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: 100.0,
          color: Colors.pinkAccent,
          child: Center(
            child: Text(
              "Buttom Sheet Modal",
              style: TextStyle(
                color: Colors.white,
              ),
              ),
          ),
        );
      },
      
    );
    
  }

  Future<Null> _showDialog() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Simple Dialog'),
            content: Text("What are you doing?"),
            actions: <Widget>[
              FlatButton(
                child: Text("Okay!"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            child: Text("Snack Bar"),
            color: Colors.pinkAccent,
            textColor: Colors.white,
            splashColor: Colors.lightBlue,
            onPressed: () {
              _showSnackBar();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            child: Text("Modal button"),
            color: Colors.pinkAccent,
            textColor: Colors.white,
            splashColor: Colors.lightBlue,
            onPressed: () {
              _showBottom();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            child: Text("Simple Dialog"),
            color: Colors.pinkAccent,
            textColor: Colors.white,
            splashColor: Colors.lightBlue,
            onPressed: () {
              _showDialog();
            },
          ),
        ),
      ],
    );
  }
}
