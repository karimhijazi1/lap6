import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  List shoosetype = ["classic", "adidas", "Nike", "Reebok  "];
  List price = ["300\$", "180\$", "400\$", "250\$"];
  List preprice = ["400\$", "350\$", "600\$", "500\$"];
  List images = [
    "https://th.bing.com/th/id/OIP.GDF4sHBm8wmiElrh4AS8-gHaE9?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R.1af8c7fde7cd0cdf5699eeb378a8ff1d?rik=qNoT1ImxCzjmcA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.b918d84a348c3e00c8f2b03700acd654?rik=tdxmKCdmhfgyuA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.62bf3b96324d2d3db69e5c0c3a1b6f4f?rik=Jfq6BcKPAnLLpg&riu=http%3a%2f%2fcdn3.sarenza.net%2fstatic%2f_img%2fproductsV4%2f0000010439%2fHD_0000010439_154253_06.jpg%3f201411192046&ehk=3sbRs5vKmMiTnpCYbzSUy2podfSjYWp2rLMLf3ZSsqs%3d&risl=&pid=ImgRaw&r=0"
  ];
  bool vcard1 = false;
  bool vcard2 = false;
  bool vcard3 = false;
  bool vcard4 = false;
  bool vf1 = false;
  bool vf2 = false;
  bool vf3 = false;
  bool vf4 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.white, Colors.grey])),
          child: ListView(children: [
            Column(
              children: [
                Visibility(
                  visible: vcard1,
                  child: Container(
                    child: Text("you add this item to your cart",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Visibility(
                  visible: vf1,
                  child: Container(
                    child: Text("you add this item to your favorite",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                      color: Colors.blue,
                      child: Text("+ add to your cart"),
                      onPressed: () {
                        setState(() {
                          vcard1 = true;
                        });
                      }),
                ),
                ListView.builder(
                    padding: EdgeInsets.only(bottom: 49),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      i = 0;
                      return ListTile(
                          tileColor: Colors.black12,
                          title: Text(
                            "${shoosetype[i]}",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                "${preprice[i]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "${price[i]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                          leading: Image(
                            image: NetworkImage(images[i]),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.all(3),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  vf1 = true;
                                });
                              },
                              icon: Icon(
                                // <-- Icon
                                Icons.favorite,
                                size: 30.0,
                              ),
                              label: Text(''), // <-- Text
                            ),
                          ));
                    }),
                Divider(
                  height: 20,
                  color: Colors.red,
                  thickness: 10,
                ),
                Visibility(
                  visible: vcard2,
                  child: Container(
                    child: Text("you add this item to your cart",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Visibility(
                  visible: vf2,
                  child: Container(
                    child: Text("you add this item to your favorite",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                      color: Colors.blue,
                      child: Text("+ add to your cart"),
                      onPressed: () {
                        setState(() {
                          vcard2 = true;
                        });
                      }),
                ),
                ListView.builder(
                    padding: EdgeInsets.only(bottom: 49),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      i = 1;
                      return ListTile(
                          tileColor: Colors.black12,
                          title: Text(
                            "${shoosetype[i]}",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                "${preprice[i]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "${price[i]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                          leading: Image(
                            image: NetworkImage(images[i]),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.all(3),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  vf2 = true;
                                });
                              },
                              icon: Icon(
                                // <-- Icon
                                Icons.favorite,
                                size: 30.0,
                              ),
                              label: Text(''), // <-- Text
                            ),
                          ));
                    }),
                Divider(
                  height: 20,
                  color: Colors.red,
                  thickness: 10,
                ),
                Visibility(
                  visible: vcard3,
                  child: Container(
                    child: Text("you add this item to your cart",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Visibility(
                  visible: vf3,
                  child: Container(
                    child: Text("you add this item to your favorite",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                      color: Colors.blue,
                      child: Text("+ add to your cart"),
                      onPressed: () {
                        setState(() {
                          vcard3 = true;
                        });
                      }),
                ),
                ListView.builder(
                    padding: EdgeInsets.only(bottom: 49),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      i = 2;
                      return ListTile(
                          tileColor: Colors.black12,
                          title: Text(
                            "${shoosetype[i]}",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                "${preprice[i]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "${price[i]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                          leading: Image(
                            image: NetworkImage(images[i]),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.all(3),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  vf3 = true;
                                });
                              },
                              icon: Icon(
                                // <-- Icon
                                Icons.favorite,
                                size: 30.0,
                              ),
                              label: Text(''), // <-- Text
                            ),
                          ));
                    }),
                Divider(
                  height: 20,
                  color: Colors.red,
                  thickness: 10,
                ),
                Visibility(
                  visible: vcard4,
                  child: Container(
                    child: Text("you add this item to your cart",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Visibility(
                  visible: vf4,
                  child: Container(
                    child: Text("you add this item to your favorite",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                      color: Colors.blue,
                      child: Text("+ add to your cart"),
                      onPressed: () {
                        setState(() {
                          vcard4 = true;
                        });
                      }),
                ),
                ListView.builder(
                    padding: EdgeInsets.only(bottom: 49),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      i = 3;
                      return ListTile(
                          tileColor: Colors.black12,
                          title: Text(
                            "${shoosetype[i]}",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                "${preprice[i]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "${price[i]}",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                          leading: Image(
                            image: NetworkImage(images[i]),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.all(3),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  vf4 = true;
                                });
                              },
                              icon: Icon(
                                // <-- Icon
                                Icons.favorite,
                                size: 30.0,
                              ),
                              label: Text(''), // <-- Text
                            ),
                          ));
                    }),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
