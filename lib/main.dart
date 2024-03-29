import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dracula', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold,)),
        ),
        body: Column(
          children: [
            Image.asset('images/dracula.png', height: 350, width: 400, fit: BoxFit.fill,),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dracula', style: TextStyle(fontSize: 30, color: Colors.pinkAccent.withOpacity(0.8), fontWeight: FontWeight.bold),),
                      Text('Hotel Transylvania', style: TextStyle(fontSize: 24, color: Colors.pinkAccent.withOpacity(0.8), fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('30', style: TextStyle(fontSize: 30, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.bold)),
                      SizedBox(width: 10,),
                      Icon(Icons.star, size: 24, color: Colors.orange,),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, size: 30, color: Colors.black.withOpacity(0.6)),
                      Text('Call', style: TextStyle(fontSize: 30, color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.near_me, size: 30, color: Colors.black.withOpacity(0.6)),
                      Text('Route', style: TextStyle(fontSize: 30, color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, size: 30, color: Colors.black.withOpacity(0.6)),
                      Text('Share', style: TextStyle(fontSize: 30, color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade50),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.favorite, color: Colors.red, size: 50,
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
