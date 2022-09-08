import 'package:flutter/material.dart';
import 'package:lap7/main.dart';

class Sctwo extends StatefulWidget {
  const Sctwo({super.key});

  @override
  State<Sctwo> createState() => _SctwoState();
}

class _SctwoState extends State<Sctwo> {
  String snackTypes = "Candy";
  int sure = 1;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
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
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFjhIlwaZvV9WB_9CL4xSvrWVlMsjSDI-5njXsfUhqqEPPzlBaqUgrf4jIGSu_jKvJ8mo&usqp=CAU"),
                  fit: BoxFit.cover)),
          child: ListView(children: [
            Column(
              children: [
                Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 200, 190, 190),
                        border: Border.all(
                            color: Color.fromARGB(255, 77, 238, 83),
                            width: 3,
                            style: BorderStyle.solid,
                            strokeAlign: StrokeAlign.center),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "What type of SNACKS do u prefer?",
                      style: TextStyle(
                          fontFamily: 'Pacifico-Regular',
                          color: Colors.black,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    )),
                Center(
                  child: DropdownButton(
                    value: snackTypes,
                    items: [
                      DropdownMenuItem(
                        child: Text("Candy"),
                        value: 'Candy',
                      ),
                      DropdownMenuItem(
                        child: Text("Potato Chips"),
                        value: 'Potato Chips',
                      ),
                      DropdownMenuItem(
                        child: Text("Chocolate"),
                        value: 'Chocolate',
                      )
                    ],
                    onChanged: (val) {
                      setState(() {
                        snackTypes = val.toString();
                      });
                    },
                  ),
                ),
                Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 200, 190, 190),
                        border: Border.all(
                            color: Color.fromARGB(255, 77, 238, 83),
                            width: 3,
                            style: BorderStyle.solid,
                            strokeAlign: StrokeAlign.center),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Do You LOVE it?",
                      style: TextStyle(
                          fontFamily: 'Pacifico-Regular',
                          color: Colors.black,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    )),
                ListTile(
                  title: Text("YES!",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  isThreeLine: true,
                  leading: Radio(
                    value: 1,
                    groupValue: sure,
                    onChanged: (value) {
                      setState(() {
                        sure = value!;
                      });
                    },
                  ),
                  subtitle: Text("Of Course"),
                  trailing: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Sure!",
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
                  subtitle: Text("I Do"),
                  isThreeLine: true,
                  trailing: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 200, 190, 190),
                        border: Border.all(
                            color: Color.fromARGB(255, 77, 238, 83),
                            width: 3,
                            style: BorderStyle.solid,
                            strokeAlign: StrokeAlign.center),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "When do you CRAVE it?",
                      style: TextStyle(
                          fontFamily: 'Pacifico-Regular',
                          color: Colors.black,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    )),
                CheckboxListTile(
                  secondary: Image.asset("images/1.jpg"),
                  title: Text(
                    "Rainy Days",
                  ),
                  subtitle: Text(
                    "In Sad weather",
                  ),
                  activeColor: Color.fromARGB(255, 134, 242, 137),
                  checkColor: Color.fromARGB(255, 0, 254, 8),
                  isThreeLine: true,
                  value: check1,
                  onChanged: (val) {
                    setState(() {
                      check1 = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  secondary: Image.asset("images/2.jpg"),
                  title: Text(
                    "Joyfull Days",
                  ),
                  subtitle: Text(
                    "Happy",
                  ),
                  activeColor: Color.fromARGB(255, 134, 242, 137),
                  checkColor: Color.fromARGB(255, 0, 254, 8),
                  isThreeLine: true,
                  value: check2,
                  onChanged: (val) {
                    setState(() {
                      check2 = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  secondary: Image.asset("images/3.jpg"),
                  title: Text(
                    "Relaxing Days",
                  ),
                  subtitle: Text(
                    "While Relaxed daily",
                  ),
                  activeColor: Color.fromARGB(255, 134, 242, 137),
                  checkColor: Color.fromARGB(255, 0, 254, 8),
                  isThreeLine: true,
                  value: check3,
                  onChanged: (val) {
                    setState(() {
                      check3 = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  secondary: Image.asset("images/4.jpg"),
                  title: Text(
                    "Busy Days",
                  ),
                  subtitle: Text(
                    "Alot of work",
                  ),
                  activeColor: Color.fromARGB(255, 134, 242, 137),
                  checkColor: Color.fromARGB(255, 0, 254, 8),
                  isThreeLine: true,
                  value: check4,
                  onChanged: (val) {
                    setState(() {
                      check4 = val!;
                    });
                  },
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
          ]),
        ),
      ),
    );
  }
}
