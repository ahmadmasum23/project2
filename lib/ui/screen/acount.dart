import 'package:flutter/material.dart';
import 'package:flutter_samples/ui/theme.dart'; // buat warna RiveAppTheme misalnya

class AcountPage extends StatelessWidget {
  const AcountPage({super.key});

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
            'Acount',
            style: TextStyle(fontSize: 34, fontFamily: "Poppins"),
          ),
          
            const SizedBox(height: 16),
            Center(
            child: Icon(Icons.account_circle, size: 100, color: Colors.black),
            ),

          const SizedBox(height: 50),
          Expanded(
            child: ListView(
              children: [
                _buildBabTile("General", Icons.settings, Icons.arrow_forward_ios),
                _buildBabTile("Security", Icons.security, Icons.arrow_forward_ios),
                _buildBabTile("Payment", Icons.payment, Icons.arrow_forward_ios),
                _buildBabTile("Contact Us", Icons.contact_support, Icons.arrow_forward_ios),
                _buildBabTile("Log out", Icons.logout, Icons.arrow_forward_ios),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBabTile(
    String desc,
    IconData leadingIcon,
    IconData? trailingIcon, 
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Row(
        children: [
          // Ikon kiri (kalau ada)
          Icon(leadingIcon, size: 26, color: Colors.black),
          const SizedBox(width: 16),

          // Teks tengah
          Expanded(
            child: Text(
              desc,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),

          // Ikon kanan (jika ada)
          if (trailingIcon != null)
            Icon(
              trailingIcon,
              size: 20,
              color: Colors.black.withOpacity(0.8),
            ),
        ],
      ),
    );
  }
}
