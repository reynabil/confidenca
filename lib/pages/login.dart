import 'package:confidenca/pages/forgotpassword.dart';
import 'package:confidenca/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:confidenca/pages/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

bool _isPasswordVisible = false;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Image.asset(
            "assets/images/logo.png",
            width: 120,
            height: 120,
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(90, 0, 90, 20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(128, 128, 128, 1), fontSize: 14),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  filled: true,
                  fillColor: Color.fromRGBO(217, 217, 217, 1),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(217, 217, 217, 1)),
                      borderRadius: BorderRadius.circular(50.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(217, 217, 217, 1)),
                      borderRadius: BorderRadius.circular(50.0))),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(90, 0, 90, 0),
            child: TextFormField(
              obscureText:
                  !_isPasswordVisible, // Gunakan !_isPasswordVisible untuk mengubah keadaan
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(128, 128, 128, 1),
                  fontSize: 14,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                filled: true,
                fillColor: Color.fromRGBO(217, 217, 217, 1),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                // Tambahkan ikon mata yang memungkinkan untuk mengganti status obscureText
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 100, 0),
            child: Row(
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(fontSize: 11, color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          ElevatedButton(
            // Tombol login
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Bentuk border
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(220, 40)),
            ),

            child: Text("Login"),
          ),
          Row(
            children: <Widget>[
              const Text(
                'Belum Punya Akun?',
                style: TextStyle(fontSize: 11),
              ),
              TextButton(
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 11, color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register()));
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Spacer(
            flex: 1,
          ),
        ],
      )),
    );
    return const Placeholder();
  }
}
