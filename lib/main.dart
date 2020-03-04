import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/blocs/blocs.dart';
import 'package:flutter_app/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(RoomApp());

class RoomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Club',
      initialRoute: '/',
      routes: {
        '/': (context) => ChangeNotifierProvider(
              create: (context) => LoginBloc(),
              child: LoginScreen(),
            ),
        '/chat': (context) => ChangeNotifierProvider(
              create: (context) => ChatRoomBloc(),
              child: ChatRoomScreen(),
            ),
      },
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  //String name = IntProperty(name, value)
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'hi',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            //onTap: ,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            onChanged: (text) {
              print(text);
            },
            decoration:
                InputDecoration(labelText: 'Name', fillColor: Colors.orange),
          ),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            onChanged: (text) {
              print(text);
            },
            decoration: InputDecoration(
              labelText: 'Name',
              fillColor: Colors.orange,
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
      ),
    );
  }
}
