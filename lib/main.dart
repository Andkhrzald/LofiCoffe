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
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              color: const Color.fromARGB(255, 255, 245, 242),
              width: double.infinity,
              height: constraints.maxHeight, // ⬅️ full tinggi layar
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    "Lo-fi Coffee",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // GAMBAR WANITA
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'assets/image/WanitaLoFi.png',
                            height: 350,
                            fit: BoxFit.contain,
                          ),
                        ),

                        // KOTAK COKLAT (MENYENTUH BAWAH)
                        Positioned(
                          left: 10,
                          right: 10,
                          bottom: 0, // ✅ NEMPEL KE BAWAH LAYAR
                          child: Container(
                            height:
                                constraints.maxHeight *
                                0.4, // ⬅️ INI KUNCINYA buat niban ke atas
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.brown[800],
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Tunggu Sejenak",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                                const SizedBox(height: 12),

                                const Text(
                                  "Tak perlu berlebihan, satu cangkir kopi sudah cukup untuk menemani jiwa yang mencari ketenangan. Dalam Hangatnya aroma yang perlahan mengusir ruang.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white70,
                                  ),
                                ),

                                const SizedBox(height: 20),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: const Text(
                                        "Register",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 40),

                                RichText(
                                  text: const TextSpan(
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
