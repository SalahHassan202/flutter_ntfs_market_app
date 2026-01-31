import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ntfs_market_app/screens/details_screen.dart';
import 'package:ntfs_market_app/widgets/custom_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Image.asset(
          "assets/Button Icon.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: const [
                    TextSpan(text: "Selling the "),
                    TextSpan(
                      text: " MOST POPULAR\n",
                      style: TextStyle(color: Color(0xFFA3D80D)),
                    ),
                    TextSpan(text: "NFT is only here"),
                  ],
                ),
              ),

              const Gap(20),

              Row(
                children: [
                  CustomContainer(
                    text: " Trending",
                    color: Color(0xffA3D80D),
                    textColor: Colors.white,
                  ),
                  const Gap(6),
                  CustomContainer(
                    text: " By Artist",
                    color: Color(0xffF8F8F8),
                    textColor: Color(0xff979796),
                  ),
                  const Gap(6),
                  CustomContainer(
                    text: " ETH",
                    color: Color(0xffF8F8F8),
                    textColor: Color(0xff979796),
                  ),
                  const Gap(6),
                  CustomContainer(
                    text: " BTC",
                    color: Color(0xffF8F8F8),
                    textColor: Color(0xff979796),
                  ),
                ],
              ),

              const Gap(24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Collection 🔥",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset("assets/more.png"),
                ],
              ),

              const Gap(16),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DetailsScreen()),
                  );
                },
                child: Image.asset(
                  "assets/home.png",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),

              const Gap(20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hypebest Apes G",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Ends in",
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 12,
                          color: Color(0xff979796),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.timer, size: 14),
                          const Gap(4),
                          Text(
                            "1h 23m 32s",
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const Gap(16),
              Divider(color: Colors.grey.shade300),
              const Gap(12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Highest Bid Today",
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 12,
                          color: Color(0xff979796),
                        ),
                      ),
                      const Gap(4),
                      Text(
                        "2.23 ETH",
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.gavel, color: Colors.white, size: 16),
                        Gap(6),
                        Text(
                          "Place Bid",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const Gap(24),

              Image.asset(
                "assets/Best artist.png",
                width: double.infinity,
                height: 100,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
