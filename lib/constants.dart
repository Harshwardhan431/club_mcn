import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
var appList=[];
var webList=[];
var aiMlList=[];
var cpList=[];
var cyberSecurityList=[];
var selectedcyberSecurity=cyberSecurityList[0];
var cloudList=[];
var selectedcloud=cloudList[0];
var selectedCpList=cpList[0];
var selectedAppList=appList[0];
var selectedWebList=webList[0];
var selectedaiMl=aiMlList[0];
var digitalPosterList=[];
var selectedPoster=digitalPosterList[0];
var videoEditList=[];
var selectedListVideoEdit=videoEditList[0];
var contentWriteList=[];
var selectedContentWrite=contentWriteList[0];


const domainUrl="https://script.googleusercontent.com/macros/echo?user_c"
    "ontent_key=bQRzRA9Ekm4_N22QbC9pYTSOOOK2kWaXfSevrhu4N9eyXB2u6hCa4Vdn"
    "nsd-jJDlLgWJYwtz-wnhikG6dl4qVokNmRW_U2Prm5_BxDlH2jW0nuo2oDemN9CCS2h1"
    "0ox_1xSncGQajx_ryfhECjZEnL8iYH-LSvii90Jz8v2T_OXyC6ONYvJpTqiPWAtG6Dy"
    "H3wFBypCW9YAAzU7wz75ybid7pSz1ZzSsj-cJB_qQMknK0s5AfasiHdz9Jw9Md8uu&lib"
    "=Mi2cd3AGFeMBsPGMaAi-ZGB4ff7uLRwu-";


List<DropdownMenuItem<String>> getCpList(){
  List<DropdownMenuItem<String>> cpdropdownList=[];
  for(int i=0;i<cpList.length;i++){
    String v=cpList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    cpdropdownList.add(neItiem);
  }
  return cpdropdownList;
}

List<DropdownMenuItem<String>> getCyberScerList(){
  List<DropdownMenuItem<String>> cyberSerdropdownList=[];
  for(int i=0;i<cyberSecurityList.length;i++){
    String v=cyberSecurityList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    cyberSerdropdownList.add(neItiem);
  }
  return cyberSerdropdownList;
}

List<DropdownMenuItem<String>> getCloudList(){
  List<DropdownMenuItem<String>> clouddropdownList=[];
  for(int i=0;i<cloudList.length;i++){
    String v=cloudList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    clouddropdownList.add(neItiem);
  }
  return clouddropdownList;
}

List<DropdownMenuItem<String>> getDigitalPosterList(){
  List<DropdownMenuItem<String>> digitalPosterdropdownList=[];
  for(int i=0;i<digitalPosterList.length;i++){
    String v=digitalPosterList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    digitalPosterdropdownList.add(neItiem);
  }
  return digitalPosterdropdownList;
}

List<DropdownMenuItem<String>> getVideoEditList(){
  List<DropdownMenuItem<String>> videoEditdropdownList=[];
  for(int i=0;i<videoEditList.length;i++){
    String v=videoEditList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    videoEditdropdownList.add(neItiem);
  }
  return videoEditdropdownList;
}

List<DropdownMenuItem<String>> getAppList(){
  List<DropdownMenuItem<String>> appdropdownList=[];
  for(int i=0;i<appList.length;i++){
    String v=appList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    appdropdownList.add(neItiem);
  }
  return appdropdownList;
}

List<DropdownMenuItem<String>> getWebList(){
  List<DropdownMenuItem<String>> webdropdownList=[];
  for(int i=0;i<webList.length;i++){
    String v=webList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    webdropdownList.add(neItiem);
  }
  return webdropdownList;
}

List<DropdownMenuItem<String>> getAiMlList(){
  List<DropdownMenuItem<String>> aimldropdownList=[];
  for(int i=0;i<aiMlList.length;i++){
    String v=aiMlList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    aimldropdownList.add(neItiem);
  }
  return aimldropdownList;
}

List<DropdownMenuItem<String>> getcontentList(){
  List<DropdownMenuItem<String>> contentdropdownList=[];
  for(int i=0;i<contentWriteList.length;i++){
    String v=contentWriteList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    contentdropdownList.add(neItiem);
  }
  return contentdropdownList;
}


class CpPopUp extends StatefulWidget {
  const CpPopUp({Key? key}) : super(key: key);

  @override
  _CpPopUpState createState() => _CpPopUpState();
}
class _CpPopUpState extends State<CpPopUp> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
            child: CupertinoPicker(
              looping: false,
              useMagnifier: true,
              itemExtent: 32,
                  backgroundColor: Colors.transparent,
                  onSelectedItemChanged: (value){},
                  children: getPickerCp())
      ),
    );
  }
}


List<Widget> getPickerCp(){
  List<Widget> cpLists=[];
  print('-----------tttttttt-');
  for(var c in cpList){
    cpLists.add(Text(c));
  }
  print(cpList);
  return cpLists;
}

/*
* DropdownButton(
                value: cpList[0],//-----------
                items: getCpList(),//---------
                onChanged: (value){
                  setState(() {
                    selectedCpList=value.toString();//----------
                  });
                },)
* */

class CyberSer extends StatefulWidget {
  const CyberSer({Key? key}) : super(key: key);

  @override
  _CyberSerState createState() => _CyberSerState();
}
class _CyberSerState extends State<CyberSer> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('List Of Seniors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              CupertinoPicker(
                  itemExtent: 32.0,
                  onSelectedItemChanged: (select){
                //selectedcyberSecurity=select.toString();
                  },
                  children: getPickerCyber()),
            ],
          )
      ),
    );
  }
}
List<Widget> getPickerCyber(){
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in cyberSecurityList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
}

/*
  List<DropdownMenuItem<String>> getCyberScerList(){
  List<DropdownMenuItem<String>> cyberSerdropdownList=[];
  for(int i=0;i<cyberSecurityList.length;i++){
    String v=cyberSecurityList[i];
    var neItiem = DropdownMenuItem(
      child: Text(v),
      value: v,
    );
    cyberSerdropdownList.add(neItiem);
  }
  return cyberSerdropdownList;
}
* */

class Cloud extends StatefulWidget {
  const Cloud({Key? key}) : super(key: key);

  @override
  _CloudState createState() => _CloudState();
}
class _CloudState extends State<Cloud> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('List Of Seniors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              DropdownButton(
                value: cloudList[0],//-----------
                items: getCloudList(),//---------
                onChanged: (value){
                  setState(() {
                    selectedcloud=value.toString();//----------
                  });
                },),
            ],
          )
      ),
    );
  }
}

class DigitPosterMarket extends StatefulWidget {
  const DigitPosterMarket({Key? key}) : super(key: key);

  @override
  _DigitPosterMarketState createState() => _DigitPosterMarketState();
}
class _DigitPosterMarketState extends State<DigitPosterMarket> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('List Of Seniors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              DropdownButton(
                value: digitalPosterList[0],//-----------
                items: getDigitalPosterList(),//---------
                onChanged: (value){
                  setState(() {
                    selectedPoster=value.toString();//----------
                  });
                },),
            ],
          )
      ),
    );
  }
}

class VideoEdit extends StatefulWidget {
  const VideoEdit({Key? key}) : super(key: key);

  @override
  _VideoEditState createState() => _VideoEditState();
}
class _VideoEditState extends State<VideoEdit> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('List Of Seniors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              DropdownButton(
                value: videoEditList[0],//-----------
                items: getVideoEditList(),//---------
                onChanged: (value){
                  setState(() {
                    selectedListVideoEdit=value.toString();//----------
                  });
                },),
            ],
          )
      ),
    );
  }
}

class ContentWrite extends StatefulWidget {
  const ContentWrite({Key? key}) : super(key: key);

  @override
  _ContentWriteState createState() => _ContentWriteState();
}
class _ContentWriteState extends State<ContentWrite> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('List Of Seniors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              DropdownButton(
                value: contentWriteList[0],//-----------
                items: getcontentList(),//---------
                onChanged: (value){
                  setState(() {
                    selectedContentWrite=value.toString();//----------
                  });
                },),
            ],
          )
      ),
    );
  }
}

class AppPopUp extends StatefulWidget {

  @override
  _AppPopUpState createState() => _AppPopUpState();
}
class _AppPopUpState extends State<AppPopUp> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('List Of Seniors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              DropdownButton(
                value: appList[0],//-----------
                items: getAppList(),//---------
                onChanged: (value){
                  setState(() {
                    selectedAppList=value.toString();//----------
                  });
                },),
            ],
          )
      ),
    );
  }
}

class WebPopUp extends StatefulWidget {
  const WebPopUp({Key? key}) : super(key: key);

  @override
  _WebPopUpState createState() => _WebPopUpState();
}
class _WebPopUpState extends State<WebPopUp> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('List Of Seniors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              DropdownButton<String>(
                value: webList[0],//-----------
                items: getWebList(),//---------
                onChanged: (value){
                  setState(() {
                    selectedWebList=value.toString();//----------
                  });
                },),
            ],
          )
      ),
    );
  }
}

class AiMlPopUp extends StatefulWidget {
  const AiMlPopUp({Key? key}) : super(key: key);

  @override
  _AiMlPopUpState createState() => _AiMlPopUpState();
}
class _AiMlPopUpState extends State<AiMlPopUp> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFF2962FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('List Of Seniors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              DropdownButton(
                value: aiMlList[0],//-----------
                items: getAiMlList(),//---------
                onChanged: (value){
                  setState(() {
                    selectedaiMl=value.toString();//----------
                  });
                },),
            ],
          )
      ),
    );
  }
}

