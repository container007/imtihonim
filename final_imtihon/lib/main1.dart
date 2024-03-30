
import 'dart:ui';

import 'package:final_imtihon/main2.dart';
import 'package:flutter/material.dart';




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
  
      
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("img/rasm1.jpg"),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            
            children: <Widget>[
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
              Center(child: Text("welcome!",style: TextStyle(fontSize: 50,color: Colors.white),)),
SizedBox(height: 140,),
ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.purple.withOpacity(0.7),
              ),
              child: Center(
                child: TextField(
                  controller: _usernameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none, 
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.white)
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.purple.withOpacity(0.7),
              ),
              child: Center(
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none, 
                      borderRadius: BorderRadius.circular(30),
                    ),
                  
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white)
                  ),
                ),
              ),
            ),
          ),
        ),
        
        SizedBox(height: 30,),
        Container(
          width: 200,
          height: 40,
          child:InkWell(
  onTap: () {
    if (_passwordController.text == '2008' && _usernameController.text == 'shohjaxon') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DynamicRo()),
      );
    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Parol yoki username xato'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  },
  child: Container(
    width: 200,
    height: 40,
    child: Center(
      child: Text("Next"),
    ),
  ),
),


        

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: const Color.fromARGB(255, 57, 74, 185),
  ),
),
SizedBox(height: 40,),
Center(
  child: Text("parol: 2008",style: TextStyle(color: Colors.white,fontSize: 16),),
),
Center(
  child: Text("username: shohjaxon",style: TextStyle(color: Colors.white,fontSize: 16)),
)

            ],
          ),
        ),
      ),
    );
  }
}


