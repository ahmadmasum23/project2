import 'package:flutter/material.dart';
import 'package:flutter_samples/ui/theme.dart';

class AcountPage extends StatelessWidget {
  const AcountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: RiveAppTheme.background2,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: RiveAppTheme.background,
            borderRadius: BorderRadius.circular(30),
          ),
          clipBehavior: Clip.hardEdge,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Acount',
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 100,
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: Text(
                    'XII RPL 1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25, 
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      _buildTile("General", Icons.settings),
                      _buildTile("Security", Icons.security),
                      _buildTile("Payment", Icons.payment),
                      _buildTile("Contact Us", Icons.contact_support),
                      _buildTile("Log out", Icons.logout),
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

  static Widget _buildTile(String title, IconData leadingIcon) {
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
          Icon(leadingIcon, size: 26, color: Colors.black),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black54),
        ],
      ),
    );
  }
}
