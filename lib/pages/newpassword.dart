import 'package:flutter/material.dart';

class Newpassword extends StatefulWidget {
  const Newpassword({super.key});

  @override
  State<Newpassword> createState() => _NewpasswordState();
}
bool _isPasswordVisible1 = false;
bool _isPasswordVisible2 = false;
class _NewpasswordState extends State<Newpassword> {
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
              'Masukkan password baru',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(90, 0, 90, 20),
            child: TextFormField(
              obscureText:
                  !_isPasswordVisible1, // Gunakan !_isPasswordVisible untuk mengubah keadaan
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
                    _isPasswordVisible1
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible1 = !_isPasswordVisible1;
                    });
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(90, 0, 90, 20),
            child: TextFormField(
              obscureText:
                  !_isPasswordVisible2, // Gunakan !_isPasswordVisible untuk mengubah keadaan
              decoration: InputDecoration(
                hintText: "Reconfirm Password",
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
                    _isPasswordVisible2
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible2 = !_isPasswordVisible2;
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
