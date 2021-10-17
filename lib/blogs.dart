import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

String Blog1="https://pict.acm.org/#/blogdetail/5fecc49f4c6df9764299f72b";
String Blog2="https://pict.acm.org/#/blogdetail/5fecc49f4c6df9764299f72c";
String Blog3="https://pict.acm.org/#/blogdetail/5fecc49f4c6df9764299f72e";

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

Future<void> _launchedInApp(String url) async {
  if (await canLaunch(url)) {
    await launch(url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'});
  } else {
    throw 'Could not launch $url';
  }
}

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Color(0xFFE0E0E0),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFFBBDEFB),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    "PASC BLOGS",
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Container(height: 250, child: Lottie.asset('assets/Blogs1.json')),
            ]),
          ),
          SizedBox(height: 20,),
          Container(
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BlogWidget(onTap: (){
                      _launchedInApp(Blog1);
                    },
                      details: 'Hyperledger Internship(Linux Foundation) experience.',
                      date: 'Dec 27, 2020',heading: 'Linux Foundation',auther: '- Shivam Balikondwar',),
                    BlogWidget(onTap: (){
                      _launchedInApp(Blog2);
                    },details: 'Bagging the Mitacs Globalink Research Internship',
                      date: 'Dec 20, 2020',heading: 'Mitacs Globalink',auther: '- Rishi Gondkar',),
                    BlogWidget(onTap: (){
                      _launchedInApp(Blog3);
                    },details: 'From a rescinded offer to presenting a paper at the International Conference',
                      date: 'Nov 15, 2020',heading: 'Form a rescinded offer',auther: '- Yogesh Kulkarni',),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BlogWidget extends StatelessWidget {
  late String heading;
  late String auther;
  late String date;
  late String details;
  late VoidCallback onTap;
  BlogWidget({required this.onTap,
    required this.date,required this.auther,required this.heading,required this.details});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    heading,
                    style: TextStyle(
                      color: Color(0xFF283593),
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Image.asset('images/blogimage.jpg'),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(details,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF9E9E9E),
                    ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5,bottom: 0,left: 15,right: 8),
                child: Text(
                  auther,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 0,bottom: 8,left: 23,right: 8),
                child: Text(date,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
