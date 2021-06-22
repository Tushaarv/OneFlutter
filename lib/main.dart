import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

// Tab Bar
class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  String mText = '';

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Tabs'),
          bottom: new TabBar(
            controller: _tabController,
              tabs: [
                new Tab(icon: new Icon(Icons.home),),
                new Tab(icon: new Icon(Icons.supervisor_account),),
                new Tab(icon: new Icon(Icons.close),)
              ],
          ),
        ),
        body: new TabBarView(
            controller : _tabController,
            children: [
              new Center( child : new Text('Home'),),
              new Center( child : new Text('Account'),),
              new Center( child : new Text('Close'),)
            ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child : new TabBar(
            controller: _tabController,
            tabs: [
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.supervisor_account),),
              new Tab(icon: new Icon(Icons.close),)
            ],
          ),
        ),
      ),
    );
  }
}



// // App Bar
// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);
//
//   @override
//   _ApplicationState createState() => _ApplicationState();
// }
//
// class _ApplicationState extends State<Application> {
//
//   String mText = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           backgroundColor: Colors.green,
//           title: new Text('App Bar'),
//           // centerTitle: true,
//           elevation: 30,
//           titleSpacing: 60,
//           // toolbarOpacity: 0.5,
//           leading: new Icon(Icons.menu),
//           actions: [
//             new IconButton(onPressed: () { setState(() {
//               mText = 'Home';
//             });}, icon: new Icon(Icons.home)),
//             new IconButton(onPressed: () { setState(() {
//               mText = 'Close';
//             });}, icon: new Icon(Icons.close)),
//           ],
//         ),
//         body: new Center(
//           child: new Text(mText),
//         ),
//       ),
//     );
//   }
// }


// // Grid View
// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);
//
//   @override
//   _ApplicationState createState() => _ApplicationState();
// }
//
// class _ApplicationState extends State<Application> {
//
//   List<int> items = []..length;
//
//   @override
//   void initState() {
//     for(int i = 0 ; i < 50; i++) {
//       items.add(i);
//     }
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         body: new GridView.builder(
//           itemCount: items.length,
//             gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//             itemBuilder: (BuildContext context, int index) {
//               return new Card(
//                 color: Colors.blue,
//                 child: new Padding(padding: const EdgeInsets.all(20)),
//               );
//           }
//           )
//       ),
//     );
//   }
// }


// // Stack View
// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);
//
//   @override
//   _ApplicationState createState() => _ApplicationState();
// }
//
// class _ApplicationState extends State<Application> {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home : new Scaffold(
//         body: new Stack(
//           alignment: Alignment.center,
//           children: [
//             new Card(color: Colors.pink, child: new Padding(padding: const EdgeInsets.all(200.0)),),
//             new Card(color: Colors.yellow, child: new Padding(padding: const EdgeInsets.all(100.0)),),
//             new Card(color: Colors.green, child: new Padding(padding: const EdgeInsets.all(50.0)),),
//             new Card(color: Colors.brown, child: new Padding(padding: const EdgeInsets.all(30.0)),),
//             new Card(color: Colors.blue, child: new Padding(padding: const EdgeInsets.all(10.0)),)
//           ],
//         ),
//       ),
//     );
//   }
// }


// List with Array
// class Application extends StatefulWidget {
//   const Application({Key? key}) : super(key: key);
//
//   @override
//   _ApplicationState createState() => _ApplicationState();
// }
//
// // Dynamic List
// class _ApplicationState extends State<Application> {
//
//   List<int> items = []..length;
//
//   @override
//   void initState() {
//     for(int i=0; i<50; i++){
//       items.add(i);
//     }
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Tushar',
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('Tushar'),),
//         body: new ListView.builder(
//           itemCount: items.length,
//             itemBuilder: (BuildContext context, int index) {
//               return new ListTile(
//                 title: new Text('Item No : $index'),
//                 trailing: new Icon(Icons.arrow_forward),
//               );
//         }),
//       ),
//     );
//   }
// }

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
