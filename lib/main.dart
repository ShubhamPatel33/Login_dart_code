import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp1());
class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home:tempscreen()
    );
  }
}

class tempscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myclass();
  }
}

class myclass extends State<tempscreen>{

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                MyApp()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // content to be displayed for 3 second
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: check(),
    );
  }
}

class check extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return checkstate();
  }
}

class checkstate extends State<check> {
  @override
  String username;
  String Password;
  String phone;
  int flag = 0;

  final username_con = new TextEditingController();
  final password_con = new TextEditingController();
  final phone_con = new TextEditingController();
  final email = ['a@b.com', 'i@j.com', 'x@y.com'];
  final password = ['abc123', 'ijk123', 'xyz123'];

  void printme() {}

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        children: [
          SizedBox(
            height: 30.0,
          ),
          TextField(
            controller: username_con,
            maxLength: 12,

            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Enter your username ",
              prefixIcon: Icon(Icons.account_box) ,
              labelStyle: TextStyle(fontSize: 20),
              filled: true,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: phone_con,
            keyboardType: TextInputType.number,
            maxLength: 10,
            decoration: InputDecoration(
              labelText: "Enter your Phone Number ",
              prefixIcon: Icon(Icons.phone) ,
              labelStyle: TextStyle(fontSize: 20),
              filled: true,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: password_con,
            maxLength: 6,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Enter your Password",
              prefixIcon: Icon(Icons.remove_red_eye) ,
              labelStyle: TextStyle(fontSize: 20),
              filled: true,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                username = username_con.text;
                Password = password_con.text;
                phone = phone_con.text;
                for (int i = 0; i < 3; i++) {
                    if (username == email[i] && Password == password[i]) {
                      flag = 1;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => second_screen()),
                      );
                    }
                }
                if(flag == 0){
                  wrong_alert(context);
                }
              });
            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text('submit', style: TextStyle(fontSize: 20)),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          RaisedButton(
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => third_screen()),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Register', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      )),
    );
  }

  wrong_alert(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("Okay"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text("Wrong Email or Password"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}

class second_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return getval();
  }
}

class getval extends State<second_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new ListView(
          children: [
            Image.asset(
              'rocky.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'rocky.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'rocky.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'rocky.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Center( child: RaisedButton(

          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => check()),
            );
          },
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),

            child: const Text('Logout', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
      )
    );
  }
}

enum BestTutorSite { Male, Female, Others }

class third_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return getval2();
  }
}

class getval2 extends State<third_screen> {
  BestTutorSite _site = BestTutorSite.Male;
  String gen;
  final gen_con = new TextEditingController();
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Enter your Name",
            prefixIcon: Icon(Icons.person) ,
            labelStyle: TextStyle(fontSize: 20),
            filled: true,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          maxLength: 12,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Enter your Email ",
            prefixIcon: Icon(Icons.account_box) ,
            labelStyle: TextStyle(fontSize: 20),
            filled: true,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          maxLength: 6,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Enter your Password",
            prefixIcon: Icon(Icons.remove_red_eye) ,
            labelStyle: TextStyle(fontSize: 20),
            filled: true,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        TextField(
          keyboardType: TextInputType.number,
          maxLength: 10,
          decoration: InputDecoration(
            labelText: "Enter your Phone Number ",
            prefixIcon: Icon(Icons.phone) ,
            labelStyle: TextStyle(fontSize: 20),
            filled: true,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        ListTile(
          title: const Text('Male'),
          leading: Radio(
            value: BestTutorSite.Male,
            groupValue: _site,
            onChanged: (BestTutorSite value) {
              setState(() {
                _site = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Female'),
          leading: Radio(
            value: BestTutorSite.Female,
            groupValue: _site,
            onChanged: (BestTutorSite value) {
              setState(() {
                _site = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Others'),
          leading: Radio(
            value: BestTutorSite.Others,
            groupValue: _site,
            onChanged: (BestTutorSite value) {
              setState(() {
                _site = value;
              });
            },
          ),
        ),
        SizedBox(width: 10,),
        Text('Agree Terms and Conditions',style: TextStyle(fontSize: 17.0), ),
        Checkbox(
          checkColor: Colors.greenAccent,
          activeColor: Colors.red,
          value: this.valuefirst,
          onChanged: (bool value) {
            setState(() {
              this.valuefirst = value;
            });
          },
        ),
        Checkbox(
          value: this.valuesecond,
          onChanged: (bool value) {
            setState(() {
              this.valuesecond = value;
            });
          },
        ),
        RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child:
                const Text('Register', style: TextStyle(fontSize: 20)),
          ),
        ),
      ],
    ));
  }
}
