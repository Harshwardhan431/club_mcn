import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'events.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'domain.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'blogs.dart';
const colorizeColors = [
  Color(0xFF283593),
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Horizon',
);

class Clubs extends StatefulWidget {
  const Clubs({Key? key}) : super(key: key);

  @override
  _ClubsState createState() => _ClubsState();
}

class _ClubsState extends State<Clubs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1C4E9),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      "PASC",
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {},
                ),
                SizedBox(height: 5,),
                CarouselSlider(
                    items: [
                      //Image.asset("iamges/pasc_students.jpg"),
                      Image.asset("images/pasc3.jpg"),
                      Image.asset("images/pasc4.jpg"),
                      Image.asset("images/pasc5.jpg"),
                      Image.asset("images/pasc6.jpg"),
                      Image.asset("images/pasc7.jpg"),
                    ],
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                    )),
               // SizedBox(height: 100,),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFF4FC3F7),
              border: Border.all(color: Color(0xFF1A237E),
                width: 2,
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
            ),
          ),
          SizedBox(height: 15,),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('images/pasc.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 50,
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Membership Drive',
                            style: TextStyle(
                              color: Color(0xFF0D47A1),
                              fontSize: 17,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFAFB42B),width: 3),
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFFC107),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                   events_clubs(event_name: 'Events',
                       onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return Events();
                     }));
                       }),
                    SizedBox(width: 10,),
                    events_clubs(event_name: 'Domains',
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Domain();
                      }));
                    },),
                  ],
                ),
                Row(
                  children: [
                    events_clubs(event_name: 'Blogs',
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Blogs();
                      }));
                    },),
                    events_clubs(event_name: 'About Us',
                    onTap: (){},),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class events_clubs extends StatelessWidget {
  late String event_name;
  late VoidCallback onTap;

  events_clubs({required this.event_name,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Center(
              child: Text('$event_name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF004D40),
              ),),
            ),
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF1A237E)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 3),
                )
              ],
              color: Color(0xFFB2EBF2),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}

class club_name extends StatelessWidget {

  late String clubname;
  club_name({required this.clubname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$clubname',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          height: 40,
          width: 130,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 15,
                offset: Offset(0, 3),
              )
            ],
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
