import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class loginUi extends StatefulWidget {
  const loginUi({Key? key}) : super(key: key);

  @override
  _loginUiState createState() => _loginUiState();
}

class _loginUiState extends State<loginUi> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: context.dynamicHeight(0.2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Welcome Back!",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20, color: Colors.grey)),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Desing Relish",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox(
                  height: context.dynamicHeight(0.05),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Enter Email...",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_passwordVisible ? true : false,
                  decoration: InputDecoration(
                    labelText: "Enter Password..",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
                SizedBox(
                  height: context.dynamicHeight(0.03),
                ),
                Container(
                  height: 60,
                  width: context.dynamicWidth(0.6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                          colors: [Colors.redAccent, Colors.grey])),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.25),
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Don't have an account? Create.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
