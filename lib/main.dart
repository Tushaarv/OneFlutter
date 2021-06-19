import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

// List with Array
class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

// Dynamic List
class _ApplicationState extends State<Application> {

  List<int> items = []..length;

  @override
  void initState() {
    for(int i=0; i<50; i++){
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tushar',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Tushar'),),
        body: new ListView.builder(
          itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return new ListTile(
                title: new Text('Item No : $index'),
                trailing: new Icon(Icons.arrow_forward),
              );
        }),
      ),
    );
  }
}

// Simple List
// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Tushar',
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('Tushar'),),
//         body: new ListView(
//           children: [
//             new ListTile(
//               title: new Text('Item One'),
//               trailing: new Icon(Icons.arrow_forward),
//             ),
//             new ListTile(
//               title: new Text('Item Two'),
//               trailing: new Icon(Icons.arrow_forward),
//             ),
//             new ListTile(
//               title: new Text('Item Three'),
//               trailing: new Icon(Icons.arrow_forward),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// Row Column
// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: "Tushar",
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('Tushar'),),
//         body: new Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             new Text('One'),
//             new Text('Two'),
//             new Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 new Text('Two.1'),
//                 new Text('Two.2')
//               ],
//             ),
//             new Text('Three'),
//             new Text('Four'),
//             new Text('Five'),
//           ],
//         ),
//       ),
//     );
//   }
// }


// Container
// class Application extends StatelessWidget {
//   const Application({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         body: new Container(
//           // color: Colors.pink,
//           child: new Text('Container'),
//           height: 300,
//           width: 300,
//           alignment: Alignment.center,
//           padding: const EdgeInsets.all(20),
//           decoration: new BoxDecoration(
//             color: Colors.green
//           ),
//           // transform: new Matrix4.rotationZ(0.5),
//           foregroundDecoration: new BoxDecoration(
//             color: Colors.deepOrange
//           ),
//         ),
//       ),
//     );
//   }
// }
