import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acoria Chat Login',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.transparent),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

Color get charcoal => const Color(0xff242424);
Color get gold => const Color(0xffdeab1f);

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style =
      TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.white);
  TextStyle boldStyle = TextStyle(
      fontFamily: 'MontserratBold', fontSize: 30.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final userField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          isDense: true,
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            child: Text(
              'Username: ',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          //prefixStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: gold),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(color: gold))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          isDense: true,
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            child: Text(
              'Password: ',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          //prefixStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: gold),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(color: gold))),
    );
    final loginButton = Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.lightBlue.withOpacity(.09),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          //HANDLE FIREBASE LOGIN
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/darkbackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            color: Colors.black.withOpacity(.1),
          ),
        ),
      ),
      Scaffold(
          appBar: AppBar(
            leading: Image.asset("images/transparent-icon.png"),
            title: Text("Login"),
            backgroundColor: Color(0xff0f0f0f),
          ),
          body: Center(
            child: Container(
              child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //SizedBox(height: 100.0),
                        ClipRect(
                          child: Container(
                            color: Colors.black.withOpacity(.4),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Welcome to Acoria',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: style.copyWith(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 150),
                        userField,
                        SizedBox(height: 25.0),
                        passwordField,
                        SizedBox(height: 35.0),
                        loginButton,
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  )),
            ),
          )),
    ]);
  }
}
