import 'package:flutter/material.dart';
import 'package:flutter_samples/ui/theme.dart';

class HalloPage extends StatelessWidget {
  const HalloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: RiveAppTheme.background2, // Warna hijau paling bawah
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFAEC8FF), // Warna atas
                Color(0xFFFFFFFF), // Warna bawah
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            // color: RiveAppTheme.background, // Warna biru di dalam
            borderRadius: BorderRadius.circular(30),
          ),
          clipBehavior: Clip.hardEdge,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                const Text(
                  'Search',
                  style: TextStyle(fontSize: 34, fontFamily: "Poppins"),
                ),
                // const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Text(
                        "Searching...",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      _buildBabTile(
                        "Bab 1",
                        "Pengenalan perangkat lunak ",
                        "assets/samples/images/topic_2.png",
                        const Color(0xFF003B56),
                      ),
                      _buildBabTile(
                        "Bab 2",
                        "Logika dan Algoritma dasar",
                        "assets/samples/images/topic_1.png",
                        const Color(0xFF006A9B),
                      ),
                      _buildBabTile(
                        "Bab 3",
                        "Bahasa pemrograman dasar",
                        "assets/samples/images/topic_2.png",
                        const Color.fromARGB(255, 51, 96, 117),
                      ),
                      _buildBabTile(
                        "Bab 4",
                        "Pemrograman dasar",
                        "assets/samples/images/topic_1.png",
                        const Color(0xFF8ECEEB),
                      ),
                      _buildBabTile(
                        "Bab 7",
                        "Pembuatan UI dengan Figma",
                        "assets/samples/images/topic_2.png",
                        const Color(0xFF58CAFF),
                      ),
                      _buildBabTile(
                        "Bab 8",
                        "Pengembangan aplikasi web",
                        "assets/samples/images/topic_1.png",
                        const Color(0xFF8D75DC),
                      ),
                      _buildBabTile(
                        "Bab 9",
                        "Basis Data",
                        "assets/samples/images/topic_2.png",
                        const Color.fromARGB(255, 88, 105, 255),
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

  static Widget _buildBabTile(
    String bab,
    String desc,
    String iconPath,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20), // jarak antar card lebih besar
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          30,
        ), // radius diperbesar biar lebih smooth
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 24,
      ), // padding lebih besar
      child: Row(
        children: [
          Row(
            children: [
              Text(
                bab,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20, // ukuran teks bab lebih besar
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 14),
              Container(width: 2, height: 50, color: Colors.white54),
              const SizedBox(width: 14),
            ],
          ),
          Expanded(
            child: Text(
              desc,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 16, // ukuran teks deskripsi lebih besar
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              iconPath,
              width: 45, // icon lebih besar
              height: 45,
            ),
          ),
        ],
      ),
    );
  }
}
