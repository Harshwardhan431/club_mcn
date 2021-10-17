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
        height: 250,
          width: 100,
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
          height: 250,
          width: 100,
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
              children: getPickerCyber())
      ),
    );
  }
}
List<Widget> getPickerCyber()
{
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in cyberSecurityList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
}


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
          height: 250,
          width: 100,
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
              children: getPickerCloud())
      ),
    );
  }
}

List<Widget> getPickerCloud(){
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in cloudList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
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
          height: 250,
          width: 100,
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
              children: getPickerDigitalMarket())
      ),
    );
  }
}


List<Widget> getPickerDigitalMarket(){
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in digitalPosterList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
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
          height: 250,
          width: 100,
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
              children: getPickerVideoEdit())
      ),
    );
  }
}


List<Widget> getPickerVideoEdit(){
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in videoEditList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
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
          height: 250,
          width: 100,
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
              children: getPickerContentWrite())
      ),
    );
  }
}

List<Widget> getPickerContentWrite(){
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in contentWriteList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
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
          height: 250,
          width: 100,
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
              children: getPickerApp())
      ),
    );
  }
}

List<Widget> getPickerApp(){
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in appList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
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
          height: 250,
          width: 100,
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
              children: getPickerWeb())
      ),
    );
  }
}

List<Widget> getPickerWeb(){
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in webList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
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
          height: 250,
          width: 100,
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
              children: getPickerAiml())
      ),
    );
  }
}


List<Widget> getPickerAiml(){
  List<Widget> cyberList=[];
  print('-----------tttttttt-');
  for(var c in aiMlList){
    cyberList.add(Text('$c'));
  }
  print(cyberList);
  return cyberList;
}