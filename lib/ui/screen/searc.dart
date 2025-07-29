import 'package:flutter/material.dart';
import 'package:flutter_samples/ui/theme.dart'; // buat warna RiveAppTheme misalnya
import 'package:flutter_samples/ui/assets.dart' as app_assets;

class HalloPage extends StatelessWidget {
  const HalloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: RiveAppTheme.background,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Row(
              //   children: [
              //     const Text(
              //       'SkillUp',
              //       style: TextStyle(
              //         fontFamily: "Poppins",
              //         fontWeight: FontWeight.bold,
              //         fontSize: 20,
              //       ),
              //     ),
              //     const SizedBox(width: 8),
              //     Image.asset(
              //       app_assets.topi, // ganti dengan path topi ungu
              //       width: 30,
              //     )
              //   ],
              // ),
            ],
          ),
          const SizedBox(height: 50),
          const Text(
            'Search',
            style: TextStyle(
              fontSize: 34,
              fontFamily: "Poppins"),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
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
                  style: TextStyle(fontFamily: "Poppins", color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _buildBabTile("Bab 1", "Pengenalan perangkat lunak & Perangkat kelas", "assets/samples/images/topic_2.png", const Color(0xFF8ECEEB)),
                _buildBabTile("Bab 2", "Logika dan Algoritma dasar", "assets/samples/images/topic_1.png", const Color(0xFF58CAFF)),
                _buildBabTile("Bab 3", "Bahasa pemrograman dasar", "assets/samples/images/topic_2.png", const Color(0xFF8D75DC)),
                _buildBabTile("Bab 4", "Pemrograman dasar", "assets/samples/images/topic_1.png", const Color(0xFF8ECEEB)),
                _buildBabTile("Bab 7", "Pembuatan UI dengan Figma", "assets/samples/images/topic_2.png", const Color(0xFF58CAFF)),
                _buildBabTile("Bab 8", "Pengembangan aplikasi web", "assets/samples/images/topic_1.png", const Color(0xFF8D75DC)),
                _buildBabTile("Bab 9", "Basis Data", "assets/samples/images/topic_2.png", const Color(0xFF58CAFF)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBabTile(String bab, String desc, String iconPath, Color color) {
  return Container(
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(25),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        )
      ],
    ),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
    child: Row(
      children: [
        // Kiri: Bab + garis
        Row(
          children: [
            Text(
              bab,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 1,
              height: 40,
              color: Colors.white.withOpacity(0.6),
            ),
            const SizedBox(width: 12),
          ],
        ),

        // Tengah: Deskripsi (Expanded biar fleksibel)
        Expanded(
          child: Text(
            desc,
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),

        // Kanan: Icon badge
        Container(
          padding: const EdgeInsets.all(6),
          child: Image.asset(
            iconPath,
            width: 35,
            height: 35,
          ),
        ),
      ],
    ),
  );
}


}
