import 'package:flutter/material.dart';
import 'package:lap7/screens/sc_1.dart';
import 'package:lap7/screens/sc_2.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Pacifico-Regular'),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 250, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 67, 241, 73),
        title: Text(
          "Snack Lover",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Pacifico-Regular',
              fontSize: 40),
        ),
      ),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 67, 241, 73),
          child: Center(
            child: Container(
              // color: Colors.greenAccent,
              margin: EdgeInsets.symmetric(vertical: 100),
              width: 300,
              height: 150,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 118, 245, 122)),
              child: Text(
                "Lets see what YOU like!",
                style: TextStyle(
                  fontFamily: 'Pacifico-Regular',
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://live.staticflickr.com/3338/5693823993_4e51c75182_b.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.green,
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ScOne();
                    }));
                  },
                  child: Text(
                    "Main category",
                    style: TextStyle(
                      fontFamily: 'Pacifico-Regular',
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.green,
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Sctwo();
                    }));
                  },
                  child: Text(
                    "More into it",
                    style: TextStyle(
                      fontFamily: 'Pacifico-Regular',
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
