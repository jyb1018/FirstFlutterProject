import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // google style widget 제공, Custom UI
    return MaterialApp(
      // 글자 위젯
      // home: Text("안녕")

      // 아이콘 위젯
      // home: Icon(Icons.shop)
      
      // 이미지 경로
      // home: Image.asset('assets/img0.jpeg')

      // 박스
      // home: Container(
      //   // 단위는 LP
      //   width: 50,
      //   height: 50,
      //   color: Colors.blue,
      // )

      // home: Center(
      //   child: Container(
      //     // 단위는 LP
      //     width: 50,
      //     height: 50,
      //     color: Colors.blue,
      //   )
      // )

      home: Scaffold(
        // 상단 레이아웃
        appBar: AppBar(
          backgroundColor: Colors.white,

          actions: const [
            Icon(Icons.search, color: Colors.black, size: 40,),
            Icon(Icons.menu, color: Colors.black, size: 40,),
            Icon(Icons.notifications, color: Colors.black, size: 40,),
          ],
          title: Container(


            child: Row(
              children: const [
                Text('역삼동',
                 style: TextStyle(
                   fontSize: 20,
                   fontFamily: 'Consola',
                   color: Colors.black,
                 ),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.black,)
              ],
            ),
            margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
          ),
        ),

        // 중단 레이아웃
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Row(
                children: [
                  Container(
                    child: Image.asset('assets/img0.jpeg'),
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),

                  ),
                  Column(
                    children: [
                      Text('상품 제목',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text('위치 - 개시 일자',
                        style: TextStyle(
                            fontSize: 10,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text('가격',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          children: const [
                            Icon(Icons.star),
                            Text('0'),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),

        // body: Column(
        //   children: [
        //     Align(
        //       alignment: Alignment.bottomCenter,
        //       child: Container(
        //         width: double.infinity,
        //         height: 50,
        //         // margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
        //         // padding: EdgeInsets.all(20),
        //         decoration: BoxDecoration(
        //           color: Colors.blueGrey,
        //           border: Border.all(color: Colors.black),
        //         ),
        //
        //         child: Align(
        //             alignment: Alignment.center,
        //             child: Text('글')
        //         ),
        //       ),
        //     ),
        //     Text('안녕하세요',
        //       style: TextStyle(
        //         color: Color(0xff51a08a),
        //         fontSize: 100,
        //       ),
        //     ),
        //
        //
        //   ],
        // ),

        // 하단 레이아웃
        bottomNavigationBar: BottomAppBar(
            child:
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page)],
              ),
            )
        ),
      )


    );

    // IOS style widget 제공
    // return CupertinoApp();
  }
}


//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
