import 'dart:convert';
import 'constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


List domainSearchList=[
  'Android Development',
  'Web Development',
  'ML/AI',
  'Competitive Coding',
  'Cyber Security',
  'Cloud/DevOps',
  'Digital Poster Making',
  'Video Editing',
  'Content Writing'
];

List imagesDomain=[
  'images/appdev.jpg',
  'images/webdev.jpg',
  'images/ai1.jpg',
  'images/cp1.jpg',
  'images/cyberSercurity.jpg',
  'images/cloud.jpg',
  'images/Digital Poster Making.jpg',
  'images/videoEdit.jpg',
  'images/contentWrite.jpg',
];

List PopUpSenior=[
  AppPopUp(),
  WebPopUp(),
  AiMlPopUp(),
  CpPopUp(),
  CyberSer(),
  Cloud(),
  DigitPosterMarket(),
  VideoEdit(),
  ContentWrite(),
];

final allList=<DomainWidget>[
  DomainWidget(name: 'Android Development', image: 'images/appdev.jpg', w: AppPopUp()),
  DomainWidget(name: 'Web Development', image: 'images/webdev.jpg', w: WebPopUp()),
  DomainWidget(name: 'ML/AI', image: 'images/ai1.jpg', w: AiMlPopUp()),
  DomainWidget(name: 'Competitive Coding', image: 'images/cp1.jpg', w: CpPopUp()),
  DomainWidget(name: 'Cyber Security', image: 'images/cyberSercurity.jpg', w: CyberSer()),
  DomainWidget(name: 'Cloud/DevOps', image: 'images/cloud.jpg', w: Cloud()),
  DomainWidget(name: 'Digital Poster Making', image: 'images/Digital Poster Making.jpg', w: DigitPosterMarket()),
  DomainWidget(name: 'Video Editing', image: 'images/videoEdit.jpg', w: VideoEdit()),
  DomainWidget(name: 'Content Writing', image: 'images/contentWrite.jpg', w: ContentWrite()),
];

class Domain extends StatefulWidget {
  const Domain({Key? key}) : super(key: key);

  @override
  _DomainState createState() => _DomainState();
}

class _DomainState extends State<Domain> {
  var domain;

  get searchDomain => null;
  void seachDomain(){

  }

  Future getDomainData() async{
    var h=Uri.parse('$domainUrl');
    http.Response response=await http.get(h);
    if (response.statusCode==200){
      var data=response.body;
     // print(data);
      var b=convert.jsonDecode(data);
      print(b.length);
      appList.clear();
      webList.clear();
      aiMlList.clear();
      print('------------ssss');
      for(int i=0;i<b.length;i++){
        var c=jsonDecode(data)[i]['Android Development'];
        if (c!="")
        appList.add(c);
        //print(appList[i]);
        var d=jsonDecode(data)[i]['Web Development'];
        if (d!="")
        webList.add(d);
        //print(webList[i]);
        var r=jsonDecode(data)[i]['ML/AI'];
        if (r!="")
        aiMlList.add(r);
        var f=jsonDecode(data)[i]['Competitive Coding'];
        if (f!="")
          cpList.add(f);
        var z=jsonDecode(data)[i]['Cyber Security'];
        if (z!="")
          cyberSecurityList.add(z);
        var n=jsonDecode(data)[i]['Cloud/DevOps'];
        if (n!="")
          cloudList.add(n);
        var m=jsonDecode(data)[i]['Digital Poster Making'];
        if (m!="")
          digitalPosterList.add(m);
        var q=jsonDecode(data)[i]['Video Editing'];
        if (q!="")
          videoEditList.add(q);
        var t=jsonDecode(data)[i]['Content Writing'];
        if (t!="")
          contentWriteList.add(t);
        //print(aiMlList[i]);
      }
    }else{
      print('errrr');
    }
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
        body: FutureBuilder(
          future: getDomainData(),
          builder: (ctx,snapshot){
            if (snapshot.connectionState==ConnectionState.done){
              if (snapshot.hasData){
                return Column(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color(0xFF0D47A1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'Which',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Domain ',style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  )),
                                  TextSpan(text: 'are you looking',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                //focusColor: Colors.white,
                                  filled: true,
                                  //fillColor: Colors.greenAccent,
                                  fillColor: Color(0xFF1A237E),
                                  hoverColor: Colors.red,
                                  border: OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      borderSide: new BorderSide()),
                                  labelText: "Enter  Domain",
                                  labelStyle: TextStyle(
                                    color: Color(0xFFEEEEEE),
                                    fontWeight: FontWeight.w600,
                                  )
                              ),
                              keyboardType: TextInputType.text,
                              key: ValueKey('Search'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Incorrect email';
                                }
                                return null;
                              },
                              onChanged: searchDomain,
                              onSaved: (value) {
                                domain = value!;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemCount: 9,
                            itemBuilder: (BuildContext context,int index){
                            return DomainWidget(name: domainSearchList[index],
                                image: imagesDomain[index],
                                w: PopUpSenior[index]);
                            }),
                      ),
                    ),
                  ],
                );
              }
            }
            return Center(
            child: CircularProgressIndicator(),
            );
          },
        ));
  }
}


class DomainWidget extends StatelessWidget {
  late String name;
  late String image;
  late Widget w;

  DomainWidget({required this.name,required this.image,required this.w});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '$name',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage('$image'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFE0E0E0),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder: (context){
                      return w;//---------
                        });
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    child: Center(
                      child: Text(
                        'Senior Info',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFBF360C),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  child: Center(
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFBF360C),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  child: Center(
                    child: Text(
                      'Projects',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFBF360C),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
