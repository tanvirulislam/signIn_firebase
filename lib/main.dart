// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    routes: {
      '/welcome' : (context) => Newpage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget buttonItem(String imagePath, String buttonName) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 100,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(imagePath),
            Text(
              buttonName,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textItem(String textLabel) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          // labelText: 'Name',
          hintText: textLabel,
          hintStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.black,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign in'),
      //   centerTitle: true,
      // ),
      // drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buttonItem('assets/google.png', 'Continue with google'),
              SizedBox(
                height: 10,
              ),
              buttonItem('assets/phone.png', 'Continue with phone'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              textItem('Email'),
              SizedBox(
                height: 10,
              ),
              textItem('Password'),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/welcome');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 150,
                  height: 55,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [Colors.purple, Colors.pink, Colors.blue],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Newpage extends StatelessWidget {
  const Newpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 38,
          ),
        ),
      ),
    );
  }
}
