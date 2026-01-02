import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(home: new HalHallo()));
// }

// class HalHallo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(body: new Center(child: new Text("Hallo Word")));
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(home: new HalamanSatu()));
// }

// class HalamanSatu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new Center(
//         child: new Container(
//           //id=kotak
//           color: Colors.blue[200],
//           width: 200,
//           height: 100,
//           child: new Center(
//             child: new Icon(Icons.android, color: Colors.green, size: 70.0),
//           ),
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(new MaterialApp(home: new loginPage()));
}

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Container(
          //id=kotak
          color: Colors.brown[200],
          width: double.infinity,
          height: double.infinity,
          child: new Center(child: new Text("Lo-fi Coffe")),
        ),
      ),
    );
  }
}
