import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(IAmPoor());

class IAmPoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: IAmPoorHomePage(title: 'I am Poor! :('),
    );
  }
}

class IAmPoorHomePage extends StatefulWidget {
  IAmPoorHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _IAmPoorHomePage createState() => _IAmPoorHomePage();
}

class _IAmPoorHomePage extends State<IAmPoorHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      if (_counter < 9) {
        _counter++;
      } else {
        _counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text(
          'I am poor! :(',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.lightGreenAccent,
          onPressed: _incrementCounter,
          child: Image.asset(
            'assets/img/poop$_counter.png',
            fit: BoxFit.fill,
            height: 200,
          ),
        ),
      ),
    );
  }
}
