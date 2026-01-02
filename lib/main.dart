import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new loginPage()));
}

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: SingleChildScrollView(
          child: Container(
            //id=kotak
            color: const Color.fromARGB(255, 255, 245, 242),
            width: double.infinity,
            child: new Column(
              mainAxisAlignment:
                  MainAxisAlignment.start, //nempel ke atas tulisanya
              children: [
                SizedBox(height: 40), //Jarak dari atas
                Text(
                  "Lo-fi Coffee",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 0), //Jarak dari atas ke gambar WanitaLofi

                Image.asset(
                  'assets/image/WanitaLoFi.png',
                  width: 250,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: 1), // jarak kotak Login

                Container(
                  width: 600,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.brown[800],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0), //Tetap Lancip yang kiri
                      bottomRight: Radius.circular(0), //Kanan Tetap Lancip
                    ),
                  ),

                  child: Column(
                    children: [
                      Text(
                        "Tunggu Sejenak",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 12), // jarak Text Filosofi Kopi
                      Text(
                        "Tak perlu berlebihan, satu cangkir kopi sudah cukup untuk menemani jiwa yang mencari ketenangan. Dalam Hangatnya aroma yang perlahan mengusir ruang.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13, color: Colors.white70),
                      ),

                      SizedBox(height: 20), // jarak batton Login

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.white),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),

                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.white),
                            ),
                            child: Text(
                              "Register",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 60), // jarak Text Tamu

                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Introvert?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),

                            TextSpan(
                              text: " Tamu",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
