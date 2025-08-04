import 'package:flutter/material.dart';
import 'package:flutter_samples/ui/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: RiveAppTheme.background2, // Bottom-most green color
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
                  'Search',
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: "Poppins",
                  ),
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    children: [
                      _buildBabTile(
                        "Chapter 1",
                        "Introduction to Software",
                        "assets/samples/images/topic_2.png",
                        const Color(0xFF003B56),
                      ),
                      _buildBabTile(
                        "Chapter 2",
                        "Basic Logic and Algorithms",
                        "assets/samples/images/topic_1.png",
                        const Color(0xFF006A9B),
                      ),
                      _buildBabTile(
                        "Chapter 3",
                        "Basic Programming Language",
                        "assets/samples/images/topic_2.png",
                        const Color.fromARGB(255, 51, 96, 117),
                      ),
                      _buildBabTile(
                        "Chapter 4",
                        "Basic Programming",
                        "assets/samples/images/topic_1.png",
                        const Color(0xFF8ECEEB),
                      ),
                      _buildBabTile(
                        "Chapter 7",
                        "UI Design with Figma",
                        "assets/samples/images/topic_2.png",
                        const Color(0xFF58CAFF),
                      ),
                      _buildBabTile(
                        "Chapter 8",
                        "Web Application Development",
                        "assets/samples/images/topic_1.png",
                        const Color(0xFF8D75DC),
                      ),
                      _buildBabTile(
                        "Chapter 9",
                        "Database",
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

  static Widget _buildBabTile(String bab, String desc, String iconPath, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Row(
        children: [
          Row(
            children: [
              Text(
                bab,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 14),
              Container(
                width: 2,
                height: 50,
                color: Colors.white54,
              ),
              const SizedBox(width: 14),
            ],
          ),
          Expanded(
            child: Text(
              desc,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              iconPath,
              width: 45,
              height: 45,
            ),
          ),
        ],
      ),
    );
  }
}
