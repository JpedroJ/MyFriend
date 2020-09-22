import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    title: "My Friend",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("MyFriend"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: () {})
        ],
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
          //margin: EdgeInsets.all(5),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.person_pin,
                size: 80,
                color: Colors.black,
              ),
              Row(

                children: [

                  buildFlatButton("Onde\nestou?", Colors.black, Colors.white,
                      MaterialPageRoute(builder: (context) => OndeEstou())),
                  // const Divider(
                  //               //   height: 5,
                  //               //   thickness: 5,
                  //               //   indent: 5,
                  //               //   endIndent: 0,
                  //               // ),
                  buildFlatButton(
                      "Descrever\nEspaço",
                      Colors.white,
                      Colors.black,
                      MaterialPageRoute(builder: (context) => DescreverEspaco())),
                ],
              ),

              Row(
                children: [
                  buildFlatButton("Destinos", Colors.white, Colors.black,
                      MaterialPageRoute(builder: (context) => Destinos())),
                  buildFlatButton("Locais", Colors.black, Colors.white,
                      MaterialPageRoute(builder: (context) => Locais())),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  buildFlatButton("Tutorial", Colors.black, Colors.white,
                      MaterialPageRoute(builder: (context) => Tutorial())),
                  buildFlatButton("Sair", Colors.white, Colors.black,
                      MaterialPageRoute(builder: (context) => exit(0))),
                ],
              ),
            ],
          )),
    );
  }

  Widget buildFlatButton(
      String label, Color buttonColor, Color textColor, MaterialPageRoute m) {
    return Expanded(
      child: RaisedButton(
          color: buttonColor,
          padding: EdgeInsets.all(65),
          child: Text(
            label,
            style: TextStyle(color: textColor, fontSize: 14.0),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.push(context, m);
          }),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My Friend',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'My Friend'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

//class _MyHomePageState extends State<MyHomePage> {

// @override
// Widget build(BuildContext context) {
//
//   return Scaffold(
//     appBar: AppBar(
//
//       title: Text(widget.title),
//     ),
//     body: Container(
//       child: listview(),
//       ),
//
//
//   );
// }

// listview(){
//   return ListView(
//     children: <Widget>[
//     Container(
//   child: widgetRowColumn1(),
//   ),
//       Container(
//         child: widgetRowColumn2(),
//       ),
//       Container(
//         child: widgetRowColumn3(),
//       ),
//   ],
//   );
// }
// widgetRowColumn1() {
//   return Row (
//
//     children: <Widget>[
//       SizedBox(
//         width: 180.0,
//         height: 200.0,
//         child: FlatButton(
//         color: Colors.black,
//         textColor: Colors.white,
//         disabledColor: Colors.grey,
//         disabledTextColor: Colors.black,
//         //padding: EdgeInsets.all(30.0),
//         splashColor: Colors.blueAccent,
//         onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => OndeEstou()));
//         },
//         child: Text(
//           "Onde estou",
//           style: TextStyle(fontSize: 30.0),
//         ),
//       ),
//   ),
//   SizedBox(
//     width: 180.0,
//     height: 200.0,
//       child: FlatButton(
//         color: Colors.white70,
//         textColor: Colors.black,
//         disabledColor: Colors.grey,
//         disabledTextColor: Colors.black,
//         //padding: EdgeInsets.all(30.0),
//         splashColor: Colors.blueAccent,
//         onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => DescreverEspaco()));
//         },
//         child: Text(
//           "Descrever espaço",
//           style: TextStyle(fontSize: 30.0),
//         ),
//       ),
//   )
//     ],
//   );
// }

// widgetRowColumn2() {
//   return Row (
//     children: <Widget>[
//       SizedBox(
//         width: 180.0,
//         height: 200.0,
//         child: FlatButton(
//           color: Colors.white60,
//           textColor: Colors.black,
//           disabledColor: Colors.grey,
//           disabledTextColor: Colors.black,
//           splashColor: Colors.blueAccent,
//           onPressed: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Destinos()));
//           },
//           child: Text(
//             "Destinos",
//             style: TextStyle(fontSize: 30.0),
//           ),
//         ),
//       ),
//       SizedBox(
//         width: 180.0,
//         height: 200.0,
//         child: FlatButton(
//           color: Colors.black,
//           textColor: Colors.white,
//           disabledColor: Colors.grey,
//           disabledTextColor: Colors.black,
//           //padding: EdgeInsets.all(30.0),
//           splashColor: Colors.blueAccent,
//           onPressed: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Locais()));
//           },
//           child: Text(
//             "Locais",
//             style: TextStyle(fontSize: 30.0),
//           ),
//         ),
//       )
//     ],
//   );
// }

//   widgetRowColumn3() {
//     return Row (
//       children: <Widget>[
//         SizedBox(
//           width: 180.0,
//           height: 200.0,
//           child: FlatButton(
//             color: Colors.black,
//             textColor: Colors.white,
//             disabledColor: Colors.grey,
//             disabledTextColor: Colors.black,
//             splashColor: Colors.blueAccent,
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Tutorial()));
//             },
//             child: Text(
//               "Tutorial",
//               style: TextStyle(fontSize: 30.0),
//             ),
//           ),
//         ),
//
//         SizedBox(
//           width: 180.0,
//           height: 200.0,
//           child: FlatButton(
//             color: Colors.white60,
//             textColor: Colors.black,
//             disabledColor: Colors.grey,
//             disabledTextColor: Colors.black,
//             //padding: EdgeInsets.all(30.0),
//             splashColor: Colors.blueAccent,
//             onPressed: ()=> exit(0),
//             child: Text(
//               "Sair",
//               style: TextStyle(fontSize: 30.0),
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
// }

class OndeEstou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Onde estou'),
        ),
        body: Center(
            child: Text(
          ' Você está na Entrada e Saída da Universidade X',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        )));
  }
}

class DescreverEspaco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Descrever espaço'),
        ),
        body: Center(
            child: Text(
          ' Entrada e Saída da Universidade X é um corredor com quatro metros de largura que concede acesso a recepção e aos elevadores',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        )));
  }
}

class Tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Tutorial'),
        ),
        body: Center(
            child: Text(
          ' Seja bem vindo ao My friend. \n Preparamos esse conteúdo especial que irá lhe fornecer dicas sobre o uso do aplicativo.',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        )));
  }
}

class Destinos extends StatefulWidget {
  Destinos({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Destinos createState() => _Destinos();
}

class _Destinos extends State<Destinos> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Destinos'),
        ),
        body: Center(
            child: widgetColumn()
        )
    );
  }

  widgetColumn() {
    return Column (
      children: <Widget>[
        SizedBox(
          width: 350.0,
          height: 80.0,
          child: FlatButton(
            color: Colors.black,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            splashColor: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Destinos()));
            },
            child: Text(
              "Banheiro",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
        SizedBox(
          width: 350.0,
          height: 80.0,
          child: FlatButton(
            color: Colors.white60,
            textColor: Colors.black,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            //padding: EdgeInsets.all(30.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Destinos()));
            },
            child: Text(
              "Secretaria",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        )
      ],
    );
  }
}

class Locais extends StatefulWidget {
  Locais({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Locais createState() => _Locais();
}

class _Locais extends State<Locais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Locais'),
        ),
        body: Center(child: widgetColumn()));
  }

  widgetColumn() {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 350.0,
          height: 80.0,
          child: FlatButton(
            color: Colors.black,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            splashColor: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Locais()));
            },
            child: Text(
              "Faculdade X",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
        SizedBox(
          width: 350.0,
          height: 80.0,
          child: FlatButton(
            color: Colors.white60,
            textColor: Colors.black,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            //padding: EdgeInsets.all(30.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Locais()));
            },
            child: Text(
              "Museu X",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
        SizedBox(
          width: 350.0,
          height: 80.0,
          child: FlatButton(
            color: Colors.black,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            splashColor: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Locais()));
            },
            child: Text(
              "Shopping X",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
      ],
    );
  }
}
