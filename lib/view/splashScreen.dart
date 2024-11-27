import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  double _progress = 0.99;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 500,
                width: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      width: 400,
                      height: 400,
                      child: Image.network(
                        'src',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              'Explore the  \nuniverse!',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 45,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Learn more about the \nuniverse where we all live',
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 100,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(
                      strokeWidth: 5,
                      color: Colors.blue.withOpacity(0.85),
                      value: _progress == 0.99 ? 1 : _progress,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        const SizedBox(
                          height: 15,
                        );
                      });
                    },
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Icon(Icons.play_arrow_rounded,color: Colors.black,),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
