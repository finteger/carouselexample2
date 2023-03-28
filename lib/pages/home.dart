import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:newproject1/route/route.dart' as route;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_core/firebase_core.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FlutterLogo(size: 50),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: [
              Stack(children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        image: DecorationImage(
                          image: AssetImage('assets/images/download.png'),
                          fit: BoxFit.cover,
                        ))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'When you get here, you understand.',
                            textStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                            ),
                            speed: const Duration(milliseconds: 200),
                          ),
                        ],
                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: false,
                      ),
                    ],
                  ),
                ),
              ]),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      image: DecorationImage(
                        image: AssetImage('assets/images/business.jpg'),
                        fit: BoxFit.fitHeight,
                      ))),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      image: DecorationImage(
                        image: AssetImage('assets/images/nursing.jpg'),
                        fit: BoxFit.cover,
                      ))),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      image: DecorationImage(
                        image: AssetImage('assets/images/software.jpg'),
                        fit: BoxFit.cover,
                      ))),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      image: DecorationImage(
                        image: AssetImage('assets/images/engineer.jpg'),
                        fit: BoxFit.cover,
                      ))),
            ],
          ),
        ],
      ),
      drawer: Drawer(
          backgroundColor: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.home, size: (36)),
                      Padding(
                        padding: const EdgeInsets.only(right: 34),
                        child: Text(
                          'Home Page',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, route.home),
              ),
              ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.contact_page, size: (36)),
                      Padding(
                        padding: const EdgeInsets.only(right: 34),
                        child: Text(
                          'Contact Us',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, route.contactUs),
              ),
              ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.pages_rounded, size: (36)),
                      Padding(
                        padding: const EdgeInsets.only(right: 52),
                        child: Text(
                          'About Us',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, route.aboutUs),
              ),
            ],
          )),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: null),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pageview),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pageview),
            label: 'Page 2',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, route.home);
              break;
            case 1:
              Navigator.pushNamed(context, route.aboutUs);
              break;
            case 2:
              Navigator.pushNamed(context, route.contactUs);
              break;
            default:
              break;
          }
        },
      ),
    );
    ;
  }
}
