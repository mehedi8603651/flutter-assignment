import 'package:flutter/material.dart';
import 'package:flutter_assingmests/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasbih Counter'),
        titleSpacing: 5,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Icon(Icons.arrow_back),
        leadingWidth: 35,
        actions: [
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFCEC5D8).withOpacity(0.76),
            ),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 447,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/images/tasbih_1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'الله أكبر',
                            style: AppTextStyle.arbiWhiteText20,
                          ),
                          SizedBox(height: 10),
                          Text('0:00:40', style: AppTextStyle.timmer),
                          SizedBox(height: 10),
                          Text(
                            'Tasbih Counter',
                            style: AppTextStyle.arbiWhiteText20,
                          ),
                          SizedBox(height: 10),
                          Text("046", style: AppTextStyle.timmer),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 45,
                              width: 108,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xFF794CA5),
                              ),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 39,
                                  width: 39,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFFCEC5D8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 20,
                            children: [
                              Container(
                                height: 35,
                                width: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Reset_Button.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Stop_Button.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Pause_Button.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Add Theme',
                    style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  spacing: 16,
                  children: [
                    Expanded(
                      child: Container(
                        height: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          image: DecorationImage(
                            image: AssetImage('assets/images/Theme_1.png'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          image: DecorationImage(
                            image: AssetImage('assets/images/Theme_2.png'),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF764CA5).withOpacity(0.7),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: AppTextStyle.bottomIconText,
        unselectedLabelStyle: AppTextStyle.bottomIconText,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/home-outline.png'),
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/calendar-outline.png'),
              size: 24,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/clock-outline.png'),
              size: 24,
            ),
            label: 'Shedule',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/settings-outline.png'),
              size: 24,
            ),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
