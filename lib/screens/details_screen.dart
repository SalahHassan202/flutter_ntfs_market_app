import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Image.asset(
          "assets/Button Bid.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.arrow_back_ios, size: 24),
                  Spacer(),
                  Text(
                    "Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                ],
              ),

              const SizedBox(height: 48),

              Image.asset(
                "assets/Image Preview.png",
                width: double.infinity,
                height: 329,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 24),

              Text(
                "#14415",
                style: GoogleFonts.spaceGrotesk(
                  color: const Color(0xffA3D80D),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hypebest Apes B",
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            "125 Sold",
                            style: GoogleFonts.spaceGrotesk(
                              color: const Color(0xff979796),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.timer,
                            size: 12,
                            color: Color(0xff979796),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "1h 23m 32s",
                            style: GoogleFonts.spaceGrotesk(
                              color: const Color(0xff979796),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/Crown (Best Selling).png"),
                ],
              ),

              const Divider(),

              Text(
                "Description",
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "Each Apes NFT is a unique masterpiece, and\ncrafted by artists around the globe.",
                style: GoogleFonts.spaceGrotesk(
                  color: const Color(0xff979796),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
