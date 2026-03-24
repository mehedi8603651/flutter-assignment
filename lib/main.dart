import 'package:flutter/material.dart';
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  double value = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('my app'),
        leading: BackButton(color: Color(0xFF3C2F2F)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Color(0xFF3C2F2F)),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 370,
                  width: 370,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/barger.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Hamburger Veggie Burger',
                  style: GoogleFonts.roboto(
                    color: Color(0xFF3C2F2F),
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    letterSpacing: 0,
                    height: 1.35,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      height: 16,
                      width: 16,
                      child: Image.asset('assets/images/star.png'),
                    ),

                    Text(
                      ' 4.8 - 14 mins',
                      style: GoogleFonts.roboto(
                        color: Color(0xFF808080),
                        fontSize: 15,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                        height: 1.35,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0,
                    height: 1.72,
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Spicy',
                            style: GoogleFonts.roboto(
                              color: Color(0xFF3C2F2F),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              letterSpacing: 0,
                              height: 1.35,
                            ),
                          ),
                          Slider(
                            padding: EdgeInsets.zero,
                            value: value,
                            min: 0.0,
                            max: 100,
                            activeColor: Color(0xFFFF9900),
                            onChanged: (newValue) {
                              setState(() {
                                value = newValue;
                              });
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mild',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xFF1CC019),
                                  height: 1.35,
                                ),
                              ),
                              Text(
                                'Hot',
                                style: GoogleFonts.roboto(
                                  color: Color(0xFFEF2A39),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.35,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Portion',
                            style: GoogleFonts.roboto(
                              color: Color(0xFF3C2F2F),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 1.35,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFEF2A39),
                                ),
                                child: Center(child: Icon(Icons.add)),
                              ),
                              Text(
                                '1',
                                style: GoogleFonts.inter(
                                  color: Color(0xFF3C2F2F),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  height: 1.35,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFEF2A39),
                                ),
                                child: Center(child: Icon(Icons.remove)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFEF2A39),
                      ),
                      child: Center(
                        child: Text(
                          '\$9.99',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Color(0xFFFFFFFF),
                            height: 1.35,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 239,
                      decoration: BoxDecoration(
                        color: Color(0xFF3C2F2F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'ORDER NOW',
                          style: GoogleFonts.inter(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 1.35,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
