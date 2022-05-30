import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Clicker Counter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
        backgroundColor: Color(0xFF5FA8FE),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(110, 0, 0, 10),
          child: Text(
            'Coppel',
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.01, -0.87),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0xFF050505),
                        offset: Offset(0, 3),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Color(0xFFAFD4FF)
                      ],
                      stops: [
                        0,
                        1
                      ],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(13, 15, 0, 0),
                    child: Text(
                      'Brandon Bueno',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.33),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://scontent.xx.fbcdn.net/v/t1.15752-9/279475901_669620184340773_4847161086267800530_n.jpg?stp=dst-jpg_s403x403&_nc_cat=110&ccb=1-6&_nc_sid=aee45a&_nc_ohc=3tXNHJxrIcAAX84oLOY&_nc_oc=AQlupvkJl9Kvsd2NRGZY7fpQFVJneQB0fhq0nZ29pkidO5h7C0qBeTTW6BQytyOiZq18U4E5mcFXApqMRL0Tr0nW&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVLYv8kp2T8TAgqu_yaklkN2BEryriqcqq0Pu8RPt72Riw&oe=62A298E8',
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.25,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.18, 0.14),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 10,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF75C3FA),
                        Color(0xFF2C9DFF)
                      ],
                      stops: [
                        0,
                        1
                      ],
                      begin: AlignmentDirectional(1, 0),
                      end: AlignmentDirectional(-1, 0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.06, -0.6),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 10,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF75C3FA),
                        Color(0xFF2C9DFF)
                      ],
                      stops: [
                        0,
                        1
                      ],
                      begin: AlignmentDirectional(1, 0),
                      end: AlignmentDirectional(-1, 0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.07, 0.28),
                child: Text(
                  '6-i  Programacion',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
