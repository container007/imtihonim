import 'dart:async';
import 'dart:ui';

import 'package:final_imtihon/main1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Kirish(),
  ));
}

class Kirish extends StatefulWidget {
  const Kirish({Key? key}) : super(key: key);

  @override
  State<Kirish> createState() => _KirishState();
}

class _KirishState extends State<Kirish> with TickerProviderStateMixin {
  late final AnimationController nom =
      AnimationController(duration: Duration(seconds: 1), vsync: this)..repeat(reverse: true);
  late final Animation<double> dd = CurvedAnimation(parent: nom, curve: Curves.bounceInOut);

  @override
  void initState() {
    super.initState();
    nom.forward();
  }

  @override
  void dispose() {
    nom.dispose();
    super.dispose();
  }

  bool _isLoading = false;
  void _login() {
    setState(() {
      _isLoading = true;
    });

    Timer(Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/rasm1.jpg"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 70, bottom: 70),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                height: 300,
                width: 300,
                color: Color.fromARGB(255, 152, 113, 249).withOpacity(0.7),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Bato",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      FadeTransition(
                        opacity: dd,
                        child: Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/vidyo.gif"))),
                        )
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                            child: Text(
                          "Hello!",
                          style: TextStyle(fontSize: 35),
                        )),
                      ),
                      Center(
                        child: Text(
                          "welcome to our application, best place",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Center(
                          child: Text(
                        "to manage your schedule",
                        style: TextStyle(fontSize: 15),
                      )),
                      SizedBox(height: 50),
                      if (_isLoading)
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: _isLoading ? null : _login,
                        child: Container(
                          width: 300,
                          height: 40,
                          child: Center(child: Text("Next")),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 57, 74, 185),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
