import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome To GPA App')),
        backgroundColor: Colors.yellow,
        body: MyCardWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyCardWidget extends StatelessWidget {
  MyCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.red,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text(
                      'Login ',
                      style: TextStyle(fontSize: 30.0,),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                     child: const Text('Student',),

                      onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentRoute()),
                      );},
                    
                        ),
                    RaisedButton(
                      child: const Text('Teacher',),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TeachersRoute()),
                        );
                      },
                    ),
                  ],
                ),
                    ),
              ],
            ),
          ),
        )
    );
  }
}

//Student's Login

class StudentRoute extends StatefulWidget {
  StudentRoute({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  @override
  StudentRoute_state createState() => StudentRoute_state();
}


class StudentRoute_state extends State<StudentRoute> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.0,
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
      ),
    );
  }
}//teacher's Login

class TeachersRoute extends StatefulWidget {
  TeachersRoute({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  @override
  TeachersRoute_class createState() => TeachersRoute_class();
}


class TeachersRoute_class extends State<TeachersRoute> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.0,
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
    ),
    );
  }
}
