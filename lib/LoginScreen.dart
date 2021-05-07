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

  @override
  Widget build(BuildContext context) {
    final userField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Username",
          hintStyle: TextStyle(color: Colors.white),
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
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: gold),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(color: gold))),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.black,
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
      Image.asset(
        "images/loginbackground.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),
      Scaffold(
          appBar: AppBar(
            leading: Image.asset("images/transparent-icon.png"),
            title: Text("Acoria Chat Login"),
            backgroundColor: gold,
          ),
          body: Center(
            child: Container(
              color: Colors.black26,
              child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 100.0),
                        Text(
                          'Welcome to Acoria',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: style.copyWith(fontSize: 30),
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