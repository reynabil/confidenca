import 'package:flutter/material.dart';
import 'package:confidenca/pages/verification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _RegisterState();
}

class _RegisterState extends State<ForgotPassword> {
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
          Spacer(
            flex: 1,
          ),
          Image.asset(
            "assets/images/logo.png",
            width: 120,
            height: 120,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
            child: Text('Masukkan Email anda'),
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
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          
          ElevatedButton(
            // Tombol login
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Verification()));
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

            child: Text("Masukkan"),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      )),
    );
    return const Placeholder();
  }
}
