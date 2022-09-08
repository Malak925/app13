import 'package:flutter/material.dart';
import 'package:lap7/main.dart';

class ScOne extends StatefulWidget {
  const ScOne({super.key});

  @override
  State<ScOne> createState() => _ScOneState();
}

class _ScOneState extends State<ScOne> {
  int sure = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Pacifico-Regular'),
      home: Scaffold(
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
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://s7.orientaltrading.com/is/image/OrientalTrading/FXBanner_808/large-green-gumballs-97-pc-~k2174.jpg"),
                  fit: BoxFit.cover)),
          // margin: EdgeInsets.symmetric(vertical: 200),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  "sweet",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  value: 1,
                  groupValue: sure,
                  onChanged: (value) {
                    setState(() {
                      sure = value!;
                    });
                  },
                ),
                subtitle: Text("Yummy"),
                isThreeLine: true,
                trailing: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              ListTile(
                title: Text(
                  "Salty",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  value: 2,
                  groupValue: sure,
                  onChanged: (value) {
                    setState(() {
                      sure = value!;
                    });
                  },
                ),
                subtitle: Text("Mhmmm"),
                isThreeLine: true,
                trailing: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              ListTile(
                title: Text(
                  "Sour",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  value: 3,
                  groupValue: sure,
                  onChanged: (value) {
                    setState(() {
                      sure = value!;
                    });
                  },
                ),
                subtitle: Text("Yum Yum"),
                isThreeLine: true,
                trailing: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Center(
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.green,
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyApp();
                      }));
                    },
                    icon: Icon(Icons.home),
                    label: Text("")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
