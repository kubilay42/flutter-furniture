import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OddoMan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'OddoMan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int getColorHexFromStr(String colorStr) {
    String hexColorStr = colorStr.replaceAll("#", "");
    if (hexColorStr.length == 6) {
      hexColorStr = "FF" + hexColorStr;
    } else if (hexColorStr.length == 3) {
      hexColorStr = "FF" + hexColorStr.split('').map((c) => c + c).join('');
    }
    return int.parse(hexColorStr, radix: 16);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Column(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 250.0,
              width: double.infinity,
              color: Color(getColorHexFromStr("#32baae")),
            ),
            Positioned(
              bottom: 20.0,
              right: 200.0,
              child: Container(
                height: 400.0,
                width: 400.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color:
                        Color(getColorHexFromStr('#5BCDC0')).withOpacity(0.6)),
              ),
            ),
            Positioned(
              bottom: 75.0,
              left: 250.0,
              child: Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color:
                        Color(getColorHexFromStr('#5BCDC0')).withOpacity(0.3)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 15.0
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 15.0),
                  Container(
                  alignment: Alignment.topLeft,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1589156191108-c762ff4b96ab?q=80&w=2572&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 120.0),
                  Container(
                    alignment: Alignment.topRight,
                      child: IconButton(icon: Icon(Icons.menu),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 30,),
                  ),
                  SizedBox(height: 15,)
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: 
              EdgeInsets.only(left:15),
              child: Text(
                'Hello, Patty',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                )
                ),
                ),
                SizedBox(height: 25),
                Padding(padding: 
                EdgeInsets.only(left:15, right: 15),
                child: Material(elevation: 5,
                borderRadius: BorderRadius.circular(5),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                        color: 
                            Color(getColorHexFromStr('#32baae')),
                        size: 30),
                    contentPadding:
                        EdgeInsets.only(left: 15, top:15),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Quicksand')
                    )
                  ),
                  ),
                  )
          ],
        )
      ])
    ]
      )
  ]));
  }
}
