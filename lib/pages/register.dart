import 'package:confidenca/pages/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

bool _isPasswordVisible = false;

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: BackButton(color: Colors.black),
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
                  hintText: "Nama",
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
            margin: EdgeInsets.fromLTRB(90, 0, 90, 20),
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
          ElevatedButton(
            // Tombol login
            onPressed: () {
              // Aksi yang akan dilakukan ketika tombol login ditekan
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

            child: Text("Register"),
          ),
          Row(
            children: <Widget>[
              const Text(
                'Sudah Punya Akun?',
                style: TextStyle(fontSize: 11),
              ),
              TextButton(
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 11, color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
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
