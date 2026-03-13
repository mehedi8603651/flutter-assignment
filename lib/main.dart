import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> images = const [
    'assets/images/Rectangle 2.png',
    'assets/images/Rectangle 2.1.png',
    'assets/images/Rectangle 2.2.png',
    'assets/images/Rectangle 2.3.png',
    'assets/images/Rectangle 2.4.png',
    'assets/images/Rectangle 2.5.png',
    'assets/images/Rectangle 2.6.png',
    'assets/images/Rectangle 2.7.png',
    'assets/images/Rectangle 2.9.png',
    'assets/images/Rectangle 2.10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Discover',
                  style: GoogleFonts.comfortaa(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                    letterSpacing: 0.54,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "WHAT'S NEW TODAY",
                  style: GoogleFonts.roboto(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                    letterSpacing: 1.44,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 387,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle 2.8.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 28,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Component.png'),
                      alignment: Alignment.centerLeft,
                      //fit: BoxFit.,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'BROWSE ALL',
                  style: GoogleFonts.roboto(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                    letterSpacing: 1.44,
                  ),
                ),
                SizedBox(height: 10),

                /*GridView.builder(
                  itemCount: images.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),*/
                MasonryGridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRect(
                      child: Image.asset(images[index], fit: BoxFit.cover),
                    );
                  },
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xFF000000)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'SEE MORE...',
                      style: GoogleFonts.roboto(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w900,
                        fontSize: 13,
                        letterSpacing: 1.44,
                      ),
                    ),
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
