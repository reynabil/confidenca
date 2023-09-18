import 'package:flutter/material.dart';
import 'package:confidenca/pages/newpassword.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
            child: Text(
                'Masukkan kode verifikasi yang telah dikirimkan ke email tersebut',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11
                ),),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(90, 0, 90, 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Kode",
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
                      builder: (context) => const Newpassword()));
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
