import 'dart:io';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:newriddels/homepage.dart';
import 'package:newriddels/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:in_app_review/in_app_review.dart';

// import 'package:chemistry/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:delayed_display/delayed_display.dart';
import 'package:spring_button/spring_button.dart';

import 'package:auto_size_text/auto_size_text.dart';

// import 'package:google_mobile_ads/google_mobile_ads.dart';
enum Availability { loading, available, unavailable }

class Secondpage extends StatefulWidget {
  var topicsToshow;
  var levelsshows;
  var showjson;
  var levelscoreee;
  var setlevel;
  int coinsshowss;

  final player = AudioCache();
  var selectedcategery;
  var items = 0;

// var countt=0;

// var doit = [
//   {
//     "0": {"1": "Europium", "2": "Einsteinium", "3": "Erunium", "4": "Erbium"},
//   }
// ];
// var levelup;

  Secondpage({
    Key key,
    this.levelsshows,
    this.showjson,
    this.levelscoreee,
    this.setlevel,
    this.coinsshowss,
    this.selectedcategery,
    this.items,
    this.topicsToshow,

// this.countt
// this.levelup,
  }) : super(key: key);
  var levelup = [
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
  ];

  var levelupf = [
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
  ];

  var levelupq = [
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
  ];

  var levelupa = [
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
  ];
  var levelupc = [
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
  ];

  var levelupa11 = [
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
  ];

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  final InAppReview _inAppReview = InAppReview.instance;
  String _appStoreId = '';
  String _microsoftStoreId = '';
  Availability _availability = Availability.loading;

// var plus = 0;
// var numbers = 0;
// var counter = 10;
// var standforr = [
//   "assets/standflevel1.json",
//   "assets/standflevel2.json",
//   "assets/standflevel3.json",
//   "assets/standflevel4.json",
//   "assets/standflevel5.json",
//   "assets/standflevel6.json",
//   "assets/standflevel7.json",
//   "assets/standflevel8.json",
//   "assets/standflevel9.json",
//   "assets/standflevel10.json",
// ];
// var standforqlevelss = [
//   "LEVEL  1",
//   "LEVEL  2",
//   "LEVEL  3",
//   "LEVEL  4",
//   "LEVEL  5",
//   "LEVEL  6",
//   "LEVEL  7",
//   "LEVEL  8",
//   "LEVEL  9",
//   "LEVEL 10",
// ];

  var count1 = 0;
  var pics = [
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
    "assets/lock.png",
  ];
  var pics2 = [
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
  ];

  var levelupdo = [
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
  ];

// int done = 0;
// int countit = 0;
// var i = 0;

// [shared preference]

  getlevelupa() async {
    SharedPreferences preff = await SharedPreferences.getInstance();
    List<String> levelupaa = preff.getStringList('levelupa');
    return levelupaa;
  }

  getlevelupq() async {
    SharedPreferences preff = await SharedPreferences.getInstance();
    List<String> levelupqq = preff.getStringList('levelupq');
    return levelupqq;
  }

  getlevelupf() async {
    SharedPreferences preffp = await SharedPreferences.getInstance();
    List<String> levelupff = preffp.getStringList('levelupf');
    return levelupff;
  }

  getlevelupc() async {
    SharedPreferences prefc = await SharedPreferences.getInstance();
    List<String> levelupc = prefc.getStringList('levelupc');
    return levelupc;
  }

  getlistpic() async {
    SharedPreferences preffpp = await SharedPreferences.getInstance();
    List<String> listpicsvalue = preffpp.getStringList('listpic');
    return listpicsvalue;
  }

  getcollect() async {
    SharedPreferences preffpppp = await SharedPreferences.getInstance();
    var collect = preffpppp.getInt('collect1');
    return collect;
  }

  getcoins() async {
    SharedPreferences preffppp = await SharedPreferences.getInstance();
    var coinss = preffppp.getInt('coins');
    return coinss;
  }
//  getcountt() async {
//   SharedPreferences preffppppp = await SharedPreferences.getInstance();
//   var counttn = preffppppp.getInt('count1');
//   return counttn;
// }
// getcoins() async {
//   SharedPreferences preffppp = await SharedPreferences.getInstance();
//   var coinss = preffppp.getInt('coins');
//   return coinss;
// }

// getshowjsonn() async {
//   SharedPreferences preffppp = await SharedPreferences.getInstance();
//   List<String> showjsonn = preffppp.getStringList('showjsonn');
//   return showjsonn;
// }

// getshowlevelss() async {
//   SharedPreferences preffppp = await SharedPreferences.getInstance();
//   List<String> showlevelss = preffppp.getStringList('showlevelss');
//   return showlevelss;
// }

  setcountervalue() async {
// SharedPreferences preffpppp = await SharedPreferences.getInstance();
// preffpppp.setStringList('showlevelss', widget.levelsshows);

// SharedPreferences preffppp = await SharedPreferences.getInstance();
// preffppp.setStringList('showjsonn', widget.showjson);
//  SharedPreferences preffppt = await SharedPreferences.getInstance();
// preffppt.setInt('count', widget.countt);

    SharedPreferences preffppp = await SharedPreferences.getInstance();
    preffppp.setInt('coins', widget.coinsshowss);

    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setStringList('levelupa', widget.levelupa);

    SharedPreferences preff = await SharedPreferences.getInstance();
    preff.setStringList('levelupq', widget.levelupq);

    SharedPreferences preffp = await SharedPreferences.getInstance();
    preffp.setStringList('levelupf', widget.levelupf);

    SharedPreferences prec = await SharedPreferences.getInstance();
    prec.setStringList('levelupc', widget.levelupc);

    SharedPreferences preffpp = await SharedPreferences.getInstance();
    preffpp.setStringList('listpic', widget.levelup);

    SharedPreferences preffpppp = await SharedPreferences.getInstance();
    preffpppp.setInt('collect1', count1);

// SharedPreferences preffppp = await SharedPreferences.getInstance();
// preffppp.setStringList('coins', widget.coinsshowss);
  }

// [level upgrade 1]

  void levelupgrad0() {
    setState(() async {
      widget.levelup[0] = levelupdo[0];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad1() {
    setState(() async {
      widget.levelup[1] = levelupdo[1];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad2() {
    setState(() async {
      widget.levelup[2] = levelupdo[2];

      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad3() {
// pics[3] = pics2[3];

    setState(() async {
      widget.levelup[3] = levelupdo[3];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad4() {
    setState(() async {
      widget.levelup[4] = levelupdo[4];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad5() {
    setState(() async {
      widget.levelup[5] = levelupdo[5];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad6() {
    setState(() async {
      widget.levelup[6] = levelupdo[6];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad7() {
    setState(() async {
      widget.levelup[7] = levelupdo[7];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad8() {
    setState(() async {
      widget.levelup[8] = levelupdo[8];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void levelupgrad9() {
    setState(() async {
      widget.levelup[9] = levelupdo[9];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

// [level upgrade 2]

  void flevelupgrad0() {
    setState(() async {
      widget.levelupf[0] = levelupdo[0];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad1() {
    setState(() async {
      widget.levelupf[1] = levelupdo[1];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad2() {
    setState(() async {
      widget.levelupf[2] = levelupdo[2];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad3() {
    setState(() async {
      widget.levelupf[3] = levelupdo[3];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad4() {
    setState(() async {
      widget.levelupf[4] = levelupdo[4];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad5() {
    setState(() async {
      widget.levelupf[5] = levelupdo[5];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad6() async {
    setState(() async {
      widget.levelupf[6] = levelupdo[6];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad7() {
    setState(() async {
      widget.levelupf[7] = levelupdo[7];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad8() {
    setState(() async {
      widget.levelupf[8] = levelupdo[8];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void flevelupgrad9() {
    setState(() async {
      widget.levelupf[9] = levelupdo[9];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

// [level upgrade 3]
  void qlevelupgrad0() {
    setState(() async {
      widget.levelupq[0] = levelupdo[0];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad1() {
    setState(() async {
      widget.levelupq[1] = levelupdo[1];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad2() {
    setState(() async {
      widget.levelupq[2] = levelupdo[2];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad3() {
    setState(() async {
      widget.levelupq[3] = levelupdo[3];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad4() {
    setState(() async {
      widget.levelupq[4] = levelupdo[4];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad5() {
    setState(() async {
      widget.levelupq[5] = levelupdo[5];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad6() {
    setState(() async {
      widget.levelupq[6] = levelupdo[6];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad7() {
    setState(() async {
      widget.levelupq[7] = levelupdo[7];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad8() {
    setState(() async {
      widget.levelupq[8] = levelupdo[8];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void qlevelupgrad9() {
    setState(() async {
      widget.levelupq[9] = levelupdo[9];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

// [ levelup 4]

  void alevelupgrad0() {
    setState(() async {
      widget.levelupa[0] = levelupdo[0];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad1() {
    setState(() async {
      widget.levelupa[1] = levelupdo[1];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad2() {
    setState(() async {
      widget.levelupa[2] = levelupdo[2];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad3() {
    setState(() async {
      widget.levelupa[3] = levelupdo[3];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad4() {
    setState(() async {
      widget.levelupa[4] = levelupdo[4];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad5() {
    setState(() async {
      widget.levelupa[5] = levelupdo[5];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad6() {
    setState(() async {
      widget.levelupa[6] = levelupdo[6];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad7() {
    setState(() async {
      widget.levelupa[7] = levelupdo[7];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad8() {
    setState(() async {
      widget.levelupa[8] = levelupdo[8];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad9() {
    setState(() async {
      widget.levelupa[9] = levelupdo[9];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

// < 10 completed >
  void alevelupgrad10() {
    setState(() async {
      widget.levelupa[10] = levelupdo[10];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad11() {
    setState(() async {
      widget.levelupa[11] = levelupdo[11];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad12() {
    setState(() async {
      widget.levelupa[12] = levelupdo[12];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad13() {
    setState(() async {
      widget.levelupa[13] = levelupdo[13];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad14() {
    setState(() async {
      widget.levelupa[14] = levelupdo[14];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad15() {
    setState(() async {
      widget.levelupa[15] = levelupdo[15];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad16() {
    setState(() async {
      widget.levelupa[16] = levelupdo[16];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad17() {
    setState(() async {
      widget.levelupa[17] = levelupdo[17];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad18() {
    setState(() async {
      widget.levelupa[18] = levelupdo[18];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad19() {
    setState(() async {
      widget.levelupa[19] = levelupdo[19];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }
// < 20 completed >

  void alevelupgrad20() {
    setState(() async {
      widget.levelupa[20] = levelupdo[20];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad21() {
    setState(() async {
      widget.levelupa[21] = levelupdo[21];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad22() {
    setState(() async {
      widget.levelupa[22] = levelupdo[22];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad23() {
    setState(() async {
      widget.levelupa[23] = levelupdo[23];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad24() {
    setState(() async {
      widget.levelupa[24] = levelupdo[24];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad25() {
    setState(() async {
      widget.levelupa[25] = levelupdo[25];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad26() {
    setState(() async {
      widget.levelupa[26] = levelupdo[26];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad27() {
    setState(() async {
      widget.levelupa[27] = levelupdo[27];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad28() {
    setState(() async {
      widget.levelupa[28] = levelupdo[28];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void alevelupgrad29() {
    setState(() async {
      widget.levelupa[29] = levelupdo[29];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

// [level upgrade 5]

  void clevelupgrad0() {
    setState(() async {
      widget.levelupc[0] = levelupdo[0];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad1() {
    setState(() async {
      widget.levelupc[1] = levelupdo[1];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad2() {
    setState(() async {
      widget.levelupc[2] = levelupdo[2];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad3() {
    setState(() async {
      widget.levelupc[3] = levelupdo[3];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad4() {
    setState(() async {
      widget.levelupc[4] = levelupdo[4];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad5() {
    setState(() async {
      widget.levelupc[5] = levelupdo[5];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad6() async {
    setState(() async {
      widget.levelupc[6] = levelupdo[6];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad7() {
    setState(() async {
      widget.levelupc[7] = levelupdo[7];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad8() {
    setState(() async {
      widget.levelupc[8] = levelupdo[8];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  void clevelupgrad9() {
    setState(() async {
      widget.levelupc[9] = levelupdo[9];
      limit = 24;
      await Future.delayed(Duration(milliseconds: 1));
      dothis2();
    });
  }

  resetValue() {
    setState(() {
// widget.countt=0;
      count1 = 1;
      widget.levelupa = pics;
// widget.setlevel = widget.levelupa;
      widget.levelupq = pics;
      widget.levelupf = pics;
      widget.levelup = pics;
      widget.levelupc = pics;
      widget.coinsshowss = 0;
      setcountervalue();
    });
  }

// [ for resettring ]
// void resetit() {
//   // setlevel = levelupdo;

//   widget.levelup[1] = levelupdo[1];
//   widget.setlevel = widget.levelup;
//   setcountervalue();

//   // reset();
// }

  void reset() {
// Navigator.push(
//    context,
//     MaterialPageRoute(
//        builder: (context) =>
//          Periodictable(

//      // levelup: levelups
//      // levelscoreee:
//      //     levelscoree,
//      )));
// if (pics[0] == pics2[0]) {
//   pics[4] = pics2[4];
//   numbers++;
// }
// levelupgrad3();
// widget.showjson = standforr;
// widget.levelsshows = standforqlevelss;

// setlevel[3] = levelupdo[3];
// setState(() {
//   widget.count1 = 1;
//   widget.levelupa = pics;
//   // widget.setlevel = widget.levelupa;
//   widget.levelupq = pics;
//   widget.levelupf = pics;
//   widget.levelup = pics;
//   widget.coinsshowss = 0;
//   setcountervalue();
// });
// setcountervalue();
  }

// void showcurrectlevels() {
//   if (widget.showjson[0] == "assets/standflevel1.json") {
//     setlevel = widget.levelup;
//   } else if (widget.showjson[0] == "assets/formulaqlevel1.json") {
//     setlevel = widget.levelupf;
//   } else {}
// }

  @override
  void initState() {
    checkforcountervalue();
    super.initState();
    (<T>(T o) => o)(WidgetsBinding.instance).addPostFrameCallback((_) async {
      try {
        final isAvailable = await _inAppReview.isAvailable();

        setState(() {
// This plugin cannot be tested on Android by installing your app
// locally. See https://github.com/britannio/in_app_review#testing for
// more information.
          _availability = isAvailable && !Platform.isAndroid
              ? Availability.available
              : Availability.unavailable;
        });
      } catch (_) {
        setState(() => _availability = Availability.unavailable);
      }
    });

    FacebookAudienceNetwork.init(
// testingId: "a77955ee-3304-4635-be65-81029b0f5201",
// iOSAdvertiserTrackingEnabled: true,
        );
  }

  checkforcountervalue() async {
    var forlevelupa = await getlevelupa() ?? widget.levelupa;
    var forlevelupq = await getlevelupq() ?? widget.levelupq;
    var forlevelupf = await getlevelupf() ?? widget.levelupf;
    var forlevelup = await getlistpic() ?? widget.levelup;
    var forlevelupc = await getlevelupc() ?? widget.levelupc;
    var forcollect = await getcollect() ?? count1;
    var forcoins = await getcoins() ?? widget.coinsshowss;
// var forcountt= await getcountt() ?? widget.countt;

// var forcoins = await getcoins() ?? widget.coinsshowss;
// var showjsonnn = await getshowjsonn() ?? widget.showjson;
// var showlevels = await getshowlevelss() ?? widget.levelsshows;
    setState(() {
      widget.levelupa = forlevelupa;
      widget.levelupq = forlevelupq;
      widget.levelupf = forlevelupf;
      widget.levelup = forlevelup;
      widget.levelupc = forlevelupc;
      count1 = forcollect;
      widget.coinsshowss = forcoins;
// widget.countt=forcountt;
// widget.coinsshowss = forcoins;
// widget.levelsshows = showlevels;
// widget.showjson = showjsonnn;
// setState(()async {
//    if(widget.countt==0){
//   resetValue();
//   await Future.delayed(Duration(milliseconds: 100));
//   collect1();
// }
// else{}
// });

      if (widget.selectedcategery == 1) {
        widget.setlevel = widget.levelup;
// setcountervalue();
      } else if (widget.selectedcategery == 2) {
        widget.setlevel = widget.levelupf;
// setcountervalue();
      } else if (widget.selectedcategery == 3) {
        widget.setlevel = widget.levelupq;
// setcountervalue();
      } else if (widget.selectedcategery == 4) {
        widget.setlevel = widget.levelupc;
// setcountervalue();
      } else if (widget.selectedcategery == 5) {
        widget.setlevel = widget.levelupa;
      } else {}
      setcountervalue();
    });
    setState(() async {
      await Future.delayed(Duration(seconds: 1));

      if (widget.selectedcategery == 1) {
// widget.items=10;
        if (count1 == 0) {
          collect1();
        } else {}
      } else if (widget.selectedcategery == 2) {
//  widget.items=10;
        if (count1 == 1) {
          collect1();
        } else {}
      } else if (widget.selectedcategery == 3) {
// widget.items=10;
        if (count1 == 2) {
          collect1();
        } else {}
      } else if (widget.selectedcategery == 4) {
// widget.items=30;
        if (count1 == 4) {
          collect1();
        } else {}
      } else if (widget.selectedcategery == 5) {
        setcountervalue();
// widget.items=30;
        if (count1 == 5) {
          collect1();
        } else {}
      }
// ,,,,,,
// if(widget.selectedcategery==1){
//  widget.items=10;
// }if(widget.selectedcategery==2){
// widget.items=10;
// }if(widget.selectedcategery==3){
// widget.items=10;
// }if(widget.selectedcategery==4){
//  widget.items=30;
// }

      if (widget.levelup[0] == levelupdo[0]) {
        _requestReview();
      }
    });
  }
// reseting(){
//   setState(()async {
//     await Future.delayed(Duration(milliseconds: 50));
//     if(widget.countt==0){
//         resetValue();
//     await Future.delayed(Duration(milliseconds: 100));
//     collect1();
//     }

//    await  Future.delayed(const Duration(milliseconds: 2000));
//   });
// }

  var limit = 0;
  void dothis() async {
    widget.player.play('coins.mp3');
    Navigator.of(context).pop();
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        widget.coinsshowss = widget.coinsshowss + 20;
      });
    }
    setState(() {
// widget.countt==1;
      count1 = count1 + 1;

      setcountervalue();
    });
  }

  void dothis2() async {
    widget.player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        widget.coinsshowss = widget.coinsshowss - 40;
      });
    }
    setState(() {
// count = count + 1;
      setcountervalue();
    });
  }

  void dothis3() async {
    widget.player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        widget.coinsshowss = widget.coinsshowss + 10;
      });
    }
  }

  void collect1() {
// widget.player.play('itslock.mp3');

//               showDialog(
//             context: context,
//             builder: (context) =>
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(
//          50),
//                        gradient: LinearGradient(
//                       colors: [
//                         Color.fromARGB(0, 0, 0, 0),
//                         Color.fromARGB(0, 0, 0, 0),
//                       ]),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color.fromARGB(150, 0, 0, 0),
//                       spreadRadius: 3,
//                       blurRadius: 5,
//                       offset: Offset(
//                         0,
//                         0,
//                       ),
//                     )
//                   ],
//                      ),

//                 child:  Column(
//                   children: [
//                     Container(
//                      height: 230,
//                      width: 230,
//                      // color: Colors.green,
//                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(
//          20),
//          gradient: LinearGradient(
//                      colors: [
//                        Color.fromARGB(0, 0, 0, 0),
//                        Color.fromARGB(0, 0, 0, 0),
//                      ]),
//              boxShadow: [
//                BoxShadow(
//                      color: Color.fromARGB(150, 0, 0, 0),
//                      spreadRadius: 6,
//                      blurRadius: 5,
//                      offset: Offset(
//                        0,
//                        0,
//                      ),
//                )
//              ],
//                          image: DecorationImage(
//                            image: AssetImage(
//                             "assets/greenop3.png",
//                            ),
//                            fit: BoxFit.fill,
//                          )),
//                          child: Padding(
//                            padding: const EdgeInsets.all(20),
//                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                              children: [
//                                Padding(
//                                  padding: const EdgeInsets.only(top: 0),
//                                  child: Container(
//                                   height:80,
//                                   // color: Colors.amber,
//                                    child: Padding(
//                                      padding: const EdgeInsets.all(8.0),
//                                      child: Center(
//                                        child: AutoSizeText(
//                                        "Collect  Your  First  Reward To Unlock...",
//                                        style: GoogleFonts.koHo(
//                                          textStyle: Theme.of(
//                                                  context)
//                                              .textTheme
//                                              .headline1,
//                                         //  fontSize: 20,
//                                          fontWeight:
//                                              FontWeight
//                                                  .w800,
//                                          fontStyle:
//                                              FontStyle
//                                                  .italic,
//                                          color:
//                                              Colors.black54),
//                                                   ),
//                                      ),
//                                    ),
//                                  ),
//                                ),Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                  children: [
//                                  Padding(
//               padding: const EdgeInsets.all(10),
//               child:
//                                              Container(
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(
//                                              20),
//                                           gradient: LinearGradient(
//                                          colors: [
//                                            Color.fromARGB(0, 0, 0, 0),
//                                            Color.fromARGB(0, 0, 0, 0),
//                                          ]),
//                                      boxShadow: [
//                                        BoxShadow(
//                                          color: Color.fromARGB(150, 0, 0, 0),
//                                          spreadRadius: 3,
//                                          blurRadius: 5,
//                                          offset: Offset(
//                                            0,
//                                            0,
//                                          ),
//                                        )
//                                      ],
//                                         ),

//                                    child:  Container(
//                                     height: 30,
//                                     width: 90,
//                                     // color: Colors.green,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(
//                                              12),
//                                              gradient: LinearGradient(
//                                     colors: [
//                                       Color.fromARGB(0, 0, 0, 0),
//                                       Color.fromARGB(0, 0, 0, 0),
//                                     ]),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Color.fromARGB(150, 0, 0, 0),
//                                     spreadRadius: 3,
//                                     blurRadius: 5,
//                                     offset: Offset(
//                                       0,
//                                       0,
//                                     ),
//                                   )
//                                 ],
//                                         image: DecorationImage(
//                                           image: AssetImage(
//                                            "assets/greenop2.png",
//                                           ),
//                                           fit: BoxFit.fill,
//                                         )),
//                                         child: Center(
//                                           child: Container(

//                     // color: Colors.green,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),

//                                              gradient: LinearGradient(
//                                     colors: [
//                                       Color.fromARGB(0, 0, 0, 0),
//                                       Color.fromARGB(0, 0, 0, 0),
//                                     ]),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Color.fromARGB(57, 0, 0, 0),
//                                     spreadRadius: 3,
//                                     blurRadius: 5,
//                                     offset: Offset(
//                                       0,
//                                       0,
//                                     ),
//                                   )
//                                 ],
//                         ),

//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Container(
//                           // color: Colors.amber,
//                           height: 25,
//                           width: 55,

//                           // color: Colors.red,
//                           child: AutoSizeText("2000",
//                               // "1000",
//                               style: GoogleFonts.lato(
//                                 textStyle: Theme.of(context)
//                                     .textTheme
//                                     .headline1,
//                                 // fontSize: 25,
//                                 fontWeight: FontWeight.w600,
//                                 fontStyle: FontStyle.italic,
//                                 color: Colors.white,
//                               )),
//                         ),
//                         Padding(
//                           padding:
//                               const EdgeInsets.only(left: 0),
//                           child: Container(
//                             height: 20,

//                             // color: Colors.red,

//                             child: Image.asset(
//                               "assets/coin2.png",
//                               // "assets/chemistrylotti.json",
//                               // height: 250,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//               ),) )),

//             ),

//                                  ],
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(top: 20),
//                                  child: SpringButton(
//                           SpringButtonType.OnlyScale,
//                            Container(
//               decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(
//                            50),
//                         gradient: LinearGradient(
//                        colors: [
//                          Color.fromARGB(0, 0, 0, 0),
//                          Color.fromARGB(0, 0, 0, 0),
//                        ]),
//                boxShadow: [
//                      BoxShadow(
//                        color: Color.fromARGB(150, 0, 0, 0),
//                        spreadRadius: 3,
//                        blurRadius: 5,
//                        offset: Offset(
//                          0,
//                          0,
//                        ),
//                      )
//                ],
//                       ),

//              child:  Container(
//               height: 40,
//               width: 110,
//               // color: Colors.green,
//               decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(
//                            12),
//                            gradient: LinearGradient(
//               colors: [
//                     Color.fromARGB(0, 0, 0, 0),
//                     Color.fromARGB(0, 0, 0, 0),
//               ]),
//           boxShadow: [
//             BoxShadow(
//               color: Color.fromARGB(150, 0, 0, 0),
//               spreadRadius: 3,
//               blurRadius: 5,
//               offset: Offset(
//                     0,
//                     0,
//               ),
//             )
//           ],
//                       image: DecorationImage(
//                         image: AssetImage(
//                          "assets/greenop2.png",
//                         ),
//                         fit: BoxFit.fill,
//                       )),
//                       child: Center(
//                         child: Container(
//                           width: 60,
//                           child:
//                               AutoSizeText(
//                          "Collect",
//                             style:
//                                   GoogleFonts
//                                       .koHo(
//                               textStyle: Theme.of(
//                                         context)
//                                     .textTheme
//                                     .headline1,

//                               fontWeight:
//                                     FontWeight
//                                         .w700,

//                               color: Colors
//                                     .white,
//                             ),
//                             // maxLines: 1,
//                           ),
//                         ),) )),
//                      onTap: ()  {
//                               setState(() async {
//                                 limit = 99;
//                                 await Future.delayed(
//                                     Duration(milliseconds: 1));
//                                 dothis();

//                                 await Future.delayed(
//                                     Duration(milliseconds: 100));
//                                 showcoinsdialouge();

//                                    });

//                               // setState(() {

//                               //   setcountervalue();
//                               // });
//                             },
//  ),
//                                )
//                              ],
//                            ),
//                          ) ),
//                   ],
//                 )),
//                      ],
//             ));
  }

  void needtounlock() {
    setState(() {
      widget.player.play('w.mp3');

      showDialog(
          context: context,
          builder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(0, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0),
                        ]),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(150, 0, 0, 0),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(
                              0,
                              0,
                            ),
                          )
                        ],
                      ),
                      child: Container(
                          height: 250,
                          width: 250,
// color: Colors.green,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(0, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0),
                              ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(150, 0, 0, 0),
                                  spreadRadius: 6,
                                  blurRadius: 5,
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                )
                              ],
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/greenop3.png",
                                ),
                                fit: BoxFit.fill,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Container(
                                    height: 100,
// color: Colors.amber,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: AutoSizeText(
                                          "Need 1000 Coins To Unlock This Level..!- See Vedios And Earn More Coins",
                                          style: GoogleFonts.koHo(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline1,
//  fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.black54),
                                          maxLines: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(colors: [
                                              Color.fromARGB(0, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0),
                                            ]),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    150, 0, 0, 0),
                                                spreadRadius: 3,
                                                blurRadius: 5,
                                                offset: Offset(
                                                  0,
                                                  0,
                                                ),
                                              )
                                            ],
                                          ),
                                          child: Container(
                                              height: 30,
                                              width: 90,
// color: Colors.green,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color.fromARGB(0, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0),
                                                  ]),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          150, 0, 0, 0),
                                                      spreadRadius: 3,
                                                      blurRadius: 5,
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    )
                                                  ],
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/greenop2.png",
                                                    ),
                                                    fit: BoxFit.fill,
                                                  )),
                                              child: Center(
                                                child: Container(
// color: Colors.green,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                    ]),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            57, 0, 0, 0),
                                                        spreadRadius: 3,
                                                        blurRadius: 5,
                                                        offset: Offset(
                                                          0,
                                                          0,
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 0, left: 0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
// color: Colors.amber,
                                                          height: 25,
                                                          width: 55,

// color: Colors.red,
                                                          child: AutoSizeText(
                                                              "600",
// "1000",
                                                              style: GoogleFonts
                                                                  .lato(
                                                                textStyle: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headline1,
// fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                                color: Colors
                                                                    .white,
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 0),
                                                          child: Container(
                                                            height: 20,

// color: Colors.red,

                                                            child: Image.asset(
                                                              "assets/coin2.png",
// "assets/chemistrylotti.json",
// height: 250,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ))),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 5, right: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SpringButton(
                                          SpringButtonType.OnlyScale,
                                          Container(
                                            height: 50,
                                            width: 50,
// color: Colors.red,

                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                gradient:
                                                    LinearGradient(colors: [
                                                  Color.fromARGB(0, 0, 0, 0),
                                                  Color.fromARGB(0, 0, 0, 0),
                                                ]),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        150, 0, 0, 0),
                                                    spreadRadius: 3,
                                                    blurRadius: 6,
                                                    offset: Offset(
                                                      0,
                                                      0,
                                                    ),
                                                  )
                                                ],
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/wrong.png",
                                                  ),
                                                  fit: BoxFit.fill,
                                                )),
                                          ),
                                          onTapDown: (_) async => {
                                                widget.player.play('w.mp3'),
                                                await Future.delayed(
                                                    Duration(seconds: 1)),
                                                Navigator.of(context).pop(),
                                              }),
                                      SpringButton(
                                          SpringButtonType.OnlyScale,
                                          Container(
                                            height: 50,
                                            width: 50,
// color: Colors.red,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                gradient:
                                                    LinearGradient(colors: [
                                                  Color.fromARGB(0, 0, 0, 0),
                                                  Color.fromARGB(0, 0, 0, 0),
                                                ]),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        150, 0, 0, 0),
                                                    spreadRadius: 3,
                                                    blurRadius: 6,
                                                    offset: Offset(
                                                      0,
                                                      0,
                                                    ),
                                                  )
                                                ],
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/right.png",
                                                  ),
                                                  fit: BoxFit.fill,
                                                )),
                                          ),
                                          onTapDown: (_) async => {
                                                widget.player.play('w.mp3'),
                                                await Future.delayed(
                                                    Duration(seconds: 0)),
                                                Navigator.of(context).pop(),
                                                FacebookInterstitialAd
                                                    .loadInterstitialAd(
                                                        placementId:
                                                            "202453525735730_202458212401928",
                                                        listener: (result,
                                                            value) async {
                                                          if (result ==
                                                              InterstitialAdResult
                                                                  .LOADED) {
                                                            FacebookInterstitialAd
                                                                .showInterstitialAd();
                                                          }
                                                          setState(() async {
                                                            limit = 14;
                                                            await Future
                                                                .delayed(
                                                                    Duration(
                                                                        seconds:
                                                                            1));
                                                            showcoinsdialouge();
                                                            dothis3();
                                                          });
                                                        })
                                              }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))),
                ],
              ));
    });
  }

  void showdilougbox() {
    setState(() {
      showDialog(
          context: context,
          builder: (context) => Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  children: [
                    Container(
                      height: 372,
                      width: 450,
                      child: AlertDialog(
                          backgroundColor: Colors.black12,
// title: Text("CHEMIST-CHAMP"),
                          content: Padding(
                            padding: const EdgeInsets.only(top: 0, left: 0),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    height: 250,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: LinearGradient(colors: [
                                          Colors.black26,
                                          Colors.black,
                                        ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.lightGreenAccent[200],
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(
                                              0,
                                              0,
                                            ),
                                          )
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10, top: 10),
                                            child: Center(
                                              child: Container(
                                                height: 60,
// color: Colors.amber,
                                                child: AutoSizeText(
                                                  "  SEE   VEDIOS   AND   EARN  \n   MORE   COINS..!",
                                                  style: GoogleFonts.koHo(
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .headline1,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.white,
                                                  ),
                                                  maxLines: 3,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 0),
                                            child: Container(
                                              height: 33,
                                              width: 100,
// color: Colors.green,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Colors.black26,
                                                    Colors.black,
                                                  ]),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors
                                                          .lightGreenAccent,
                                                      spreadRadius: 2,
                                                      blurRadius: 5,
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    )
                                                  ]),

                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Center(
                                                      child: Container(
                                                        height: 30,
                                                        width: 50,
// color: Colors.red,
                                                        child: Text("300",
// "1000",
                                                            style: GoogleFonts
                                                                .koHo(
                                                              textStyle: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline1,
                                                              fontSize: 25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 0),
                                                      child: Container(
// height: 10,
// width: 26,
// color: Colors.red,

                                                        child: Image.asset(
                                                          "assets/coin2.png",
// "assets/chemistrylotti.json",
// height: 250,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Column(
// mainAxisAlignment:
//     MainAxisAlignment
//         .spaceAround,
                                              children: [
                                                InkWell(
                                                  onTap: () {
// Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => Play()));
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 0),
                                                    child: Container(
                                                      height: 70,
                                                      width: 68,
// color: Colors.red,
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        image: AssetImage(
                                                          "assets/vedio5.png",
                                                        ),
                                                        fit: BoxFit.fill,
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25,
                                                            right: 25,
                                                            top: 10),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            widget.player
                                                                .play('w.mp3');

                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Container(
                                                            height: 35,
                                                            width: 80,
// width: 370,
// color: Colors.green,
                                                            decoration:
                                                                BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    gradient:
                                                                        LinearGradient(
                                                                            colors: [
                                                                          Colors
                                                                              .black87,
                                                                          Colors
                                                                              .black38,
                                                                        ]),
                                                                    boxShadow: [
                                                                  BoxShadow(
                                                                    color: Colors
                                                                        .lightGreenAccent,
                                                                    spreadRadius:
                                                                        2,
                                                                    blurRadius:
                                                                        5,
                                                                    offset:
                                                                        Offset(
                                                                      0,
                                                                      0,
                                                                    ),
                                                                  )
                                                                ]),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 0,
                                                                      left: 0),
                                                              child: Center(
                                                                child: Text(
                                                                    "NO",
                                                                    style:
                                                                        GoogleFonts
                                                                            .koHo(
                                                                      textStyle: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline1,
                                                                      fontSize:
                                                                          25,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                      color: Colors
                                                                          .white,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            widget.player
                                                                .play('w.mp3');
                                                          },
                                                          child: InkWell(
                                                            onTap: () {
                                                              widget.player
                                                                  .play(
                                                                      'w.mp3');
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) =>
                                                                          Center(
                                                                            child:
                                                                                Text(
                                                                              "Not  Available.....",
                                                                              style: GoogleFonts.koHo(
                                                                                textStyle: Theme.of(context).textTheme.headline1,
                                                                                fontSize: 25,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FontStyle.italic,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ));
                                                            },
                                                            child: Container(
                                                              height: 35,
                                                              width: 80,
// width: 370,
// color: Colors.green,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                      gradient:
                                                                          LinearGradient(
                                                                              colors: [
                                                                            Colors.black87,
                                                                            Colors.black38,
                                                                          ]),
                                                                      boxShadow: [
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .lightGreenAccent,
                                                                      spreadRadius:
                                                                          2,
                                                                      blurRadius:
                                                                          5,
                                                                      offset:
                                                                          Offset(
                                                                        0,
                                                                        0,
                                                                      ),
                                                                    )
                                                                  ]),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top: 0,
                                                                        left:
                                                                            0),
                                                                child: Center(
                                                                  child: Text(
                                                                      "YES",
                                                                      style: GoogleFonts
                                                                          .koHo(
                                                                        textStyle: Theme.of(context)
                                                                            .textTheme
                                                                            .headline1,
                                                                        fontSize:
                                                                            25,
                                                                        fontWeight:
                                                                            FontWeight.w800,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                        color: Colors
                                                                            .white,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ));
    });
  }

  void navigatthirdpage(index) async {
// widget.player.play('r.mp3');
    await Future.delayed(Duration(seconds: 1));
    setcountervalue();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Jsondata(
                questionsjson:
// standfor[index]
                    widget.showjson[index],
                coinsshowt: widget.coinsshowss ?? 0)));
  }

  void ifcondition(index) {
    if (index == 0) {
      if (widget.levelup[0] != levelupdo[0]) {
        if (widget.coinsshowss > 999) {
          levelupgrad0();
// widget.player.play('r.mp3');
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[0] == levelupdo[0]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      }
      if (widget.levelup[0] != levelupdo[0]) {
        needtounlock();
      } else {}
    }
    if (index == 1) {
      if (widget.levelup[1] != levelupdo[1]) {
        if (widget.coinsshowss > 999) {
          levelupgrad1();
        }
      } else if (widget.levelup[1] == levelupdo[1]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      }
      if (widget.levelup[1] != levelupdo[1]) {
        needtounlock();
      } else {}
    }
    if (index == 2) {
      if (widget.levelup[2] != levelupdo[2]) {
        if (widget.coinsshowss > 999) {
          levelupgrad2();
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[2] == levelupdo[2]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelup[2] != levelupdo[2]) {
      } else {}
    }
    if (index == 3) {
      if (widget.levelup[3] != levelupdo[3]) {
        if (widget.coinsshowss > 999) {
          levelupgrad3();
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[3] == levelupdo[3]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelup[3] != levelupdo[3]) {
      } else {}
    }
    if (index == 4) {
      if (widget.levelup[4] != levelupdo[4]) {
        if (widget.coinsshowss > 999) {
          levelupgrad4();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[4] == levelupdo[4]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelup[4] != levelupdo[4]) {
      } else {}
    }
    if (index == 5) {
      if (widget.levelup[5] != levelupdo[5]) {
        if (widget.coinsshowss > 999) {
          levelupgrad5();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[5] == levelupdo[5]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelup[5] != levelupdo[5]) {
      } else {}
    }
    if (index == 6) {
      if (widget.levelup[6] != levelupdo[6]) {
        if (widget.coinsshowss > 999) {
          levelupgrad6();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[6] == levelupdo[6]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelup[6] != levelupdo[6]) {
      } else {}
    }
    if (index == 7) {
      if (widget.levelup[7] != levelupdo[7]) {
        if (widget.coinsshowss > 999) {
          levelupgrad7();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[7] == levelupdo[7]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelup[7] != levelupdo[7]) {
      } else {}
    }
    if (index == 8) {
      if (widget.levelup[8] != levelupdo[8]) {
        if (widget.coinsshowss > 999) {
          levelupgrad8();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[8] == levelupdo[8]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelup[8] != levelupdo[8]) {
      } else {}
    }
    if (index == 9) {
      if (widget.levelup[9] != levelupdo[9]) {
        if (widget.coinsshowss > 999) {
          levelupgrad9();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelup[9] == levelupdo[9]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelup[9] != levelupdo[9]) {
      } else {}
    }
  }

  void forlevelupf(index) {
    if (index == 0) {
      if (widget.levelupf[0] != levelupdo[0]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad0();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[0] == levelupdo[0]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[0] != levelupdo[0]) {
        if (count1 == 1) {
          collect1();
        } else {}
      } else {}
    }
    if (index == 1) {
      if (widget.levelupf[1] != levelupdo[1]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad1();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('w.mp3');
        }
      } else if (widget.levelupf[1] == levelupdo[1]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[1] != levelupdo[1]) {
      } else {}
    }
    if (index == 2) {
      if (widget.levelupf[2] != levelupdo[2]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad2();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[2] == levelupdo[2]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[2] != levelupdo[2]) {
      } else {}
    }
    if (index == 3) {
      if (widget.levelupf[3] != levelupdo[3]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad3();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[3] == levelupdo[3]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[3] != levelupdo[3]) {
      } else {}
    }
    if (index == 4) {
      if (widget.levelupf[4] != levelupdo[4]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad4();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[4] == levelupdo[4]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[4] != levelupdo[4]) {
      } else {}
    }
    if (index == 5) {
      if (widget.levelupf[5] != levelupdo[5]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad5();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[5] == levelupdo[5]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[5] != levelupdo[5]) {
      } else {}
    }
    if (index == 6) {
      if (widget.levelupf[6] != levelupdo[6]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad6();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[6] == levelupdo[6]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[6] != levelupdo[6]) {
      } else {}
    }
    if (index == 7) {
      if (widget.levelupf[7] != levelupdo[7]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad7();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[7] == levelupdo[7]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[7] != levelupdo[7]) {
      } else {}
    }
    if (index == 8) {
      if (widget.levelupf[8] != levelupdo[8]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad8();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[8] == levelupdo[8]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[8] != levelupdo[8]) {
      } else {}
    }
    if (index == 9) {
      if (widget.levelupf[9] != levelupdo[9]) {
        if (widget.coinsshowss > 999) {
          flevelupgrad9();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupf[9] == levelupdo[9]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupf[9] != levelupdo[9]) {
      } else {}
    }
  }

  void forlevelupq(index) {
    if (index == 0) {
      if (widget.levelupq[0] != levelupdo[0]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad0();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[0] == levelupdo[0]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[0] != levelupdo[0]) {
        if (count1 == 1) {
          collect1();
        } else {}
      } else {}
    }
    if (index == 1) {
      if (widget.levelupq[1] != levelupdo[1]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad1();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('w.mp3');
        }
      } else if (widget.levelupq[1] == levelupdo[1]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[1] != levelupdo[1]) {
      } else {}
    }
    if (index == 2) {
      if (widget.levelupq[2] != levelupdo[2]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad2();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[2] == levelupdo[2]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[2] != levelupdo[2]) {
      } else {}
    }
    if (index == 3) {
      if (widget.levelupq[3] != levelupdo[3]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad3();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[3] == levelupdo[3]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[3] != levelupdo[3]) {
      } else {}
    }
    if (index == 4) {
      if (widget.levelupq[4] != levelupdo[4]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad4();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[4] == levelupdo[4]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[4] != levelupdo[4]) {
      } else {}
    }
    if (index == 5) {
      if (widget.levelupq[5] != levelupdo[5]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad5();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[5] == levelupdo[5]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[5] != levelupdo[5]) {
      } else {}
    }
    if (index == 6) {
      if (widget.levelupq[6] != levelupdo[6]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad6();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[6] == levelupdo[6]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[6] != levelupdo[6]) {
      } else {}
    }
    if (index == 7) {
      if (widget.levelupq[7] != levelupdo[7]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad7();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[7] == levelupdo[7]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[7] != levelupdo[7]) {
      } else {}
    }
    if (index == 8) {
      if (widget.levelupq[8] != levelupdo[8]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad8();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[8] == levelupdo[8]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[8] != levelupdo[8]) {
      } else {}
    }
    if (index == 9) {
      if (widget.levelupq[9] != levelupdo[9]) {
        if (widget.coinsshowss > 999) {
          qlevelupgrad9();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupq[9] == levelupdo[9]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupq[9] != levelupdo[9]) {
      } else {}
    }
  }

  void forlevelupa(index) {
    if (index == 0) {
      if (widget.levelupa[0] != levelupdo[0]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad0();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[0] == levelupdo[0]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[0] != levelupdo[0]) {
        if (count1 == 1) {
          collect1();
        } else {}
      } else {}
    }
    if (index == 1) {
      if (widget.levelupa[1] != levelupdo[1]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad1();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('w.mp3');
        }
      } else if (widget.levelupa[1] == levelupdo[1]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[1] != levelupdo[1]) {
      } else {}
    }
    if (index == 2) {
      if (widget.levelupa[2] != levelupdo[2]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad2();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[2] == levelupdo[2]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[2] != levelupdo[2]) {
      } else {}
    }
    if (index == 3) {
      if (widget.levelupa[3] != levelupdo[3]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad3();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[3] == levelupdo[3]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[3] != levelupdo[3]) {
      } else {}
    }
    if (index == 4) {
      if (widget.levelupa[4] != levelupdo[4]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad4();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[4] == levelupdo[4]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[4] != levelupdo[4]) {
      } else {}
    }
    if (index == 5) {
      if (widget.levelupa[5] != levelupdo[5]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad5();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[5] == levelupdo[5]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[5] != levelupdo[5]) {
      } else {}
    }
    if (index == 6) {
      if (widget.levelupa[6] != levelupdo[6]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad6();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[6] == levelupdo[6]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[6] != levelupdo[6]) {
      } else {}
    }
    if (index == 7) {
      if (widget.levelupa[7] != levelupdo[7]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad7();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[7] == levelupdo[7]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[7] != levelupdo[7]) {
      } else {}
    }
    if (index == 8) {
      if (widget.levelupa[8] != levelupdo[8]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad8();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[8] == levelupdo[8]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[8] != levelupdo[8]) {
      } else {}
    }
    if (index == 9) {
      if (widget.levelupa[9] != levelupdo[9]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad9();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[9] == levelupdo[9]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[9] != levelupdo[9]) {
      } else {}
    }

    if (index == 10) {
      if (widget.levelupa[10] != levelupdo[10]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad10();
          navigatthirdpage(index);
        } else {}
      } else if (widget.levelupa[0] == levelupdo[0]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[0] != levelupdo[0]) {
        if (count1 == 1) {
          collect1();
        } else {}
      } else {}
    }
    if (index == 11) {
      if (widget.levelupa[11] != levelupdo[11]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad11();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('w.mp3');
        }
      } else if (widget.levelupa[11] == levelupdo[11]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[11] != levelupdo[11]) {
      } else {}
    }
    if (index == 12) {
      if (widget.levelupa[12] != levelupdo[12]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad12();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[12] == levelupdo[12]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[12] != levelupdo[12]) {
      } else {}
    }
    if (index == 13) {
      if (widget.levelupa[13] != levelupdo[13]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad13();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[13] == levelupdo[13]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[13] != levelupdo[13]) {
      } else {}
    }
    if (index == 14) {
      if (widget.levelupa[14] != levelupdo[14]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad14();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[14] == levelupdo[14]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[14] != levelupdo[14]) {
      } else {}
    }
    if (index == 15) {
      if (widget.levelupa[15] != levelupdo[15]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad15();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[15] == levelupdo[15]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[15] != levelupdo[15]) {
      } else {}
    }
    if (index == 16) {
      if (widget.levelupa[16] != levelupdo[16]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad16();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[16] == levelupdo[16]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[16] != levelupdo[16]) {
      } else {}
    }
    if (index == 17) {
      if (widget.levelupa[17] != levelupdo[17]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad17();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[17] == levelupdo[17]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[17] != levelupdo[17]) {
      } else {}
    }
    if (index == 18) {
      if (widget.levelupa[18] != levelupdo[18]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad18();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[18] == levelupdo[18]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[18] != levelupdo[18]) {
      } else {}
    }
    if (index == 19) {
      if (widget.levelupa[19] != levelupdo[19]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad19();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[19] == levelupdo[19]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[19] != levelupdo[19]) {
      } else {}
    }

// ......................

    if (index == 20) {
      if (widget.levelupa[20] != levelupdo[20]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad20();
          navigatthirdpage(index);
        } else {}
      } else if (widget.levelupa[20] == levelupdo[20]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[20] != levelupdo[20]) {
        if (count1 == 1) {
          collect1();
        } else {}
      } else {}
    }
    if (index == 21) {
      if (widget.levelupa[21] != levelupdo[21]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad21();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('w.mp3');
        }
      } else if (widget.levelupa[21] == levelupdo[21]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[21] != levelupdo[21]) {
      } else {}
    }
    if (index == 22) {
      if (widget.levelupa[22] != levelupdo[22]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad22();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[22] == levelupdo[22]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[22] != levelupdo[22]) {
      } else {}
    }
    if (index == 23) {
      if (widget.levelupa[23] != levelupdo[23]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad23();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[23] == levelupdo[23]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[23] != levelupdo[23]) {
      } else {}
    }
    if (index == 24) {
      if (widget.levelupa[24] != levelupdo[24]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad24();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[24] == levelupdo[24]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[24] != levelupdo[24]) {
      } else {}
    }
    if (index == 25) {
      if (widget.levelupa[25] != levelupdo[25]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad25();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[25] == levelupdo[25]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[25] != levelupdo[25]) {
      } else {}
    }
    if (index == 26) {
      if (widget.levelupa[26] != levelupdo[26]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad26();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[26] == levelupdo[26]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[26] != levelupdo[26]) {
      } else {}
    }
    if (index == 27) {
      if (widget.levelupa[27] != levelupdo[27]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad27();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[27] == levelupdo[27]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[27] != levelupdo[27]) {
      } else {}
    }
    if (index == 28) {
      if (widget.levelupa[28] != levelupdo[28]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad28();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[28] == levelupdo[28]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[28] != levelupdo[28]) {
      } else {}
    }
    if (index == 29) {
      if (widget.levelupa[29] != levelupdo[29]) {
        if (widget.coinsshowss > 999) {
          alevelupgrad29();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupa[29] == levelupdo[29]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupa[29] != levelupdo[29]) {
      } else {}
    }
  }

// For levelup c

  void forlevelupc(index) {
    if (index == 0) {
      if (widget.levelupc[0] != levelupdo[0]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad0();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[0] == levelupdo[0]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[0] != levelupdo[0]) {
        if (count1 == 1) {
          collect1();
        } else {}
      } else {}
    }
    if (index == 1) {
      if (widget.levelupc[1] != levelupdo[1]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad1();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('w.mp3');
        }
      } else if (widget.levelupc[1] == levelupdo[1]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[1] != levelupdo[1]) {
      } else {}
    }
    if (index == 2) {
      if (widget.levelupc[2] != levelupdo[2]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad2();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[2] == levelupdo[2]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[2] != levelupdo[2]) {
      } else {}
    }
    if (index == 3) {
      if (widget.levelupc[3] != levelupdo[3]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad3();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[3] == levelupdo[3]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[3] != levelupdo[3]) {
      } else {}
    }
    if (index == 4) {
      if (widget.levelupc[4] != levelupdo[4]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad4();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[4] == levelupdo[4]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[4] != levelupdo[4]) {
      } else {}
    }
    if (index == 5) {
      if (widget.levelupc[5] != levelupdo[5]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad5();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[5] == levelupdo[5]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[5] != levelupdo[5]) {
      } else {}
    }
    if (index == 6) {
      if (widget.levelupc[6] != levelupdo[6]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad6();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[6] == levelupdo[6]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[6] != levelupdo[6]) {
      } else {}
    }
    if (index == 7) {
      if (widget.levelupc[7] != levelupdo[7]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad7();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[7] == levelupdo[7]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[7] != levelupdo[7]) {
      } else {}
    }
    if (index == 8) {
      if (widget.levelupc[8] != levelupdo[8]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad8();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[8] == levelupdo[8]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[8] != levelupdo[8]) {
      } else {}
    }
    if (index == 9) {
      if (widget.levelupc[9] != levelupdo[9]) {
        if (widget.coinsshowss > 999) {
          clevelupgrad9();
          navigatthirdpage(index);
        } else {
          needtounlock();
          widget.player.play('itslock.mp3');
        }
      } else if (widget.levelupc[9] == levelupdo[9]) {
        widget.player.play('r.mp3');
        navigatthirdpage(index);
      } else if (widget.levelupc[9] != levelupdo[9]) {
      } else {}
    }
  }

  void showcoinsdialouge() async {
    showDialog(
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
// height: 50,
// width: 26,
// color: Colors.red,

                          child: Lottie.asset(
                        "assets/coincollect.json",
// "assets/chemistrylotti.json",
// height: 250,
                      ))),
                ],
              ),
            ));
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pop();
  }

// BannerAd _anchoredAdaptiveAd;
// bool _isLoaded = false;

// @override
// void didChangeDependencies() {
//   super.didChangeDependencies();
//   _loadAd();
// }

// Future<void> _loadAd() async {
//   // Get an AnchoredAdaptiveBannerAdSize before loading the ad.
//   final AnchoredAdaptiveBannerAdSize size =
//       await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
//           MediaQuery.of(context).size.width.truncate());

//   if (size == null) {
//     print('Unable to get height of anchored banner.');
//     return;
//   }

//   _anchoredAdaptiveAd = BannerAd(
//     // TODO: replace these test ad units with your own ad unit.
//     adUnitId: 'ca-app-pub-7844077136164668/8764467480',
//     size: size,
//     request: AdRequest(),
//     listener: BannerAdListener(
//       onAdLoaded: (Ad ad) {
//         print('$ad loaded: ${ad.responseInfo}');
//         setState(() {
//           // When the ad is loaded, get the ad size and use it to set
//           // the height of the ad container.
//           _anchoredAdaptiveAd = ad as BannerAd;
//           _isLoaded = true;
//         });
//       },
//       onAdFailedToLoad: (Ad ad, LoadAdError error) {
//         print('Anchored adaptive banner failedToLoad: $error');
//         ad.dispose();
//       },
//     ),
//   );
//   return _anchoredAdaptiveAd.load();
// }
  void _setAppStoreId(String id) => _appStoreId = id;

  void _setMicrosoftStoreId(String id) => _microsoftStoreId = id;

  Future<void> _requestReview() => _inAppReview.requestReview();

  Future<void> _openStoreListing() => _inAppReview.openStoreListing(
        appStoreId: _appStoreId,
        microsoftStoreId: _microsoftStoreId,
      );
  @override
  Widget build(BuildContext context) {
    var showjson;
    var _crossAxisSpacing = 0;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 1;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = 130;
    var _aspectRatio = _width / cellHeight;

    return WillPopScope(
        onWillPop: (() async {
          widget.player.play('w.mp3');
          await Future.delayed(Duration(seconds: 1));
          Navigator.of(context).pop();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: ((context) => Homepage())));
          FacebookInterstitialAd.loadInterstitialAd(
              placementId: "616076523573705_616096503571707",
              listener: (result, value) async {
                if (result == InterstitialAdResult.LOADED) {
                  FacebookInterstitialAd.showInterstitialAd();
                }
              });
        }),
        child: Scaffold(
          backgroundColor: Color.fromARGB(227, 48, 47, 47).withOpacity(0.8),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.dark,
            elevation: 0,
            leading: Text(
              "",
              style: GoogleFonts.breeSerif(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),

// title: Text(
//   "Fast Foods",
//   style: GoogleFonts.breeSerif(
//       fontSize: 25,
//       fontWeight: FontWeight.w800,
//       color: Colors.black),
// ),
            actions: [
              GlassContainer(
// height: 40,
                width: MediaQuery.of(context).size.width * 1,
                blur: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Center(
                    child: InkWell(
                      onTap: () async {
                        await Future.delayed(const Duration(milliseconds: 500));
                        widget.player.play('w.mp3');

                        showDialog(
                            context: context,
                            builder: (context) => Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId:
//         "616076523573705_616097106904980",
//     adType: NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     height: 300,
//     backgroundColor:
//         Color.fromARGB(34, 0, 0, 0),
//     titleColor: Colors.white,
//     descriptionColor: Colors.white,
//     buttonColor: Color.fromARGB(54, 0, 0, 0),
//     buttonTitleColor: Colors.white,
//     buttonBorderColor: Colors.white,
//     keepAlive:
//         true, //set true if you do not want adview to refresh on widget rebuild
//     keepExpandedWhileLoading:
//         false, // set false if you want to collapse the native ad view when the ad is loading
//     expandAnimationDuraion:
//         300, //in milliseconds. Expands the adview with animation when ad is loaded
//     listener: (result, value) {
//       print("Native Ad: $result --> $value");
//     },
//   ),
// ),
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            gradient: LinearGradient(colors: [
                                              Color.fromARGB(0, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0),
                                            ]),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    150, 0, 0, 0),
                                                spreadRadius: 3,
                                                blurRadius: 5,
                                                offset: Offset(
                                                  0,
                                                  0,
                                                ),
                                              )
                                            ],
                                          ),
                                          child: Container(
                                              height: 250,
                                              width: 250,
// color: Colors.green,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color.fromARGB(0, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0),
                                                  ]),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          150, 0, 0, 0),
                                                      spreadRadius: 6,
                                                      blurRadius: 5,
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    )
                                                  ],
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/greenop3.png",
                                                    ),
                                                    fit: BoxFit.fill,
                                                  )),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 0),
                                                      child: Container(
                                                        height: 80,
// color: Colors.amber,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Center(
                                                            child: AutoSizeText(
                                                              "See  Vedios  And  Earn  More  Coins",
                                                              style: GoogleFonts
                                                                  .koHo(
                                                                      textStyle: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline1,
//  fontSize: 20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                      color: Colors
                                                                          .black54),
                                                              maxLines: 2,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                gradient:
                                                                    LinearGradient(
                                                                        colors: [
                                                                      Color.fromARGB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      Color.fromARGB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                    ]),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            150,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    spreadRadius:
                                                                        3,
                                                                    blurRadius:
                                                                        5,
                                                                    offset:
                                                                        Offset(
                                                                      0,
                                                                      0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Container(
                                                                  height: 30,
                                                                  width: 90,
// color: Colors.green,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(12),
                                                                      gradient: LinearGradient(colors: [
                                                                        Color.fromARGB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        Color.fromARGB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                      ]),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color: Color.fromARGB(
                                                                              150,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          spreadRadius:
                                                                              3,
                                                                          blurRadius:
                                                                              5,
                                                                          offset:
                                                                              Offset(
                                                                            0,
                                                                            0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      image: DecorationImage(
                                                                        image:
                                                                            AssetImage(
                                                                          "assets/greenop2.png",
                                                                        ),
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      )),
                                                                  child: Center(
                                                                    child:
                                                                        Container(
// color: Colors.green,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Color.fromARGB(
                                                                                57,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            spreadRadius:
                                                                                3,
                                                                            blurRadius:
                                                                                5,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),

                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right:
                                                                                0,
                                                                            left:
                                                                                0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            Container(
// color: Colors.amber,
                                                                              height: 25,
                                                                              width: 55,

// color: Colors.red,
                                                                              child: AutoSizeText("600",
// "1000",
                                                                                  style: GoogleFonts.lato(
                                                                                    textStyle: Theme.of(context).textTheme.headline1,
// fontSize: 25,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FontStyle.italic,
                                                                                    color: Colors.white,
                                                                                  )),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 0),
                                                                              child: Container(
                                                                                height: 20,

// color: Colors.red,

                                                                                child: Image.asset(
                                                                                  "assets/coin2.png",
// "assets/chemistrylotti.json",
// height: 250,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ))),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 30,
                                                              left: 5,
                                                              right: 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SpringButton(
                                                              SpringButtonType
                                                                  .OnlyScale,
                                                              Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Color.fromARGB(
                                                                                150,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            spreadRadius:
                                                                                3,
                                                                            blurRadius:
                                                                                6,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        image:
                                                                            DecorationImage(
                                                                          image:
                                                                              AssetImage(
                                                                            "assets/wrong.png",
                                                                          ),
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        )),
                                                              ),
                                                              onTapDown:
                                                                  (_) async => {
                                                                        widget
                                                                            .selectedcategery
                                                                            .play('w.mp3'),
                                                                        await Future.delayed(Duration(
                                                                            seconds:
                                                                                1)),
                                                                        Navigator.of(context)
                                                                            .pop(),
                                                                      }),
                                                          SpringButton(
                                                              SpringButtonType
                                                                  .OnlyScale,
                                                              Container(
                                                                height: 50,
                                                                width: 50,
// color: Colors.red,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Color.fromARGB(
                                                                                150,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            spreadRadius:
                                                                                3,
                                                                            blurRadius:
                                                                                6,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        image:
                                                                            DecorationImage(
                                                                          image:
                                                                              AssetImage(
                                                                            "assets/right.png",
                                                                          ),
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        )),
                                                              ),
                                                              onTapDown:
                                                                  (_) async => {
                                                                        widget
                                                                            .player
                                                                            .play('w.mp3'),
                                                                        await Future.delayed(Duration(
                                                                            seconds:
                                                                                0)),
                                                                        Navigator.of(context)
                                                                            .pop(),
                                                                        FacebookInterstitialAd.loadInterstitialAd(
                                                                            placementId: "616076523573705_616096503571707",
                                                                            listener: (result, value) async {
                                                                              if (result == InterstitialAdResult.LOADED) {
                                                                                FacebookInterstitialAd.showInterstitialAd();
                                                                              }
                                                                              setState(() async {
                                                                                limit = 14;
                                                                                await Future.delayed(Duration(milliseconds: 500));
                                                                                showcoinsdialouge();
                                                                                dothis3();
                                                                              });
                                                                            })
                                                                      }),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ))),
                                    ],
                                  ),
                                ));
                      },
                      child: DelayedDisplay(
                        delay: Duration(seconds: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                widget.player.play('w.mp3');

                                showDialog(
                                    context: context,
                                    builder: (context) => Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId:
//         "616076523573705_616097106904980",
//     adType: NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     height: 300,
//     backgroundColor:
//         Color.fromARGB(52, 0, 0, 0),
//     titleColor: Colors.white,
//     descriptionColor: Colors.white,
//     buttonColor: Color.fromARGB(
//         255, 179, 179, 180),
//     buttonTitleColor: Colors.white,
//     buttonBorderColor: Colors.white,
//     keepAlive:
//         true, //set true if you do not want adview to refresh on widget rebuild
//     keepExpandedWhileLoading:
//         false, // set false if you want to collapse the native ad view when the ad is loading
//     expandAnimationDuraion:
//         300, //in milliseconds. Expands the adview with animation when ad is loaded
//     listener: (result, value) {
//       print(
//           "Native Ad: $result --> $value");
//     },
//   ),
// ),
                                              Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                    ]),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            150, 0, 0, 0),
                                                        spreadRadius: 3,
                                                        blurRadius: 5,
                                                        offset: Offset(
                                                          0,
                                                          0,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Container(
                                                      height: 250,
                                                      width: 250,
// color: Colors.green,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          gradient:
                                                              LinearGradient(
                                                                  colors: [
                                                                Color.fromARGB(
                                                                    0, 0, 0, 0),
                                                                Color.fromARGB(
                                                                    0, 0, 0, 0),
                                                              ]),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color
                                                                  .fromARGB(150,
                                                                      0, 0, 0),
                                                              spreadRadius: 6,
                                                              blurRadius: 5,
                                                              offset: Offset(
                                                                0,
                                                                0,
                                                              ),
                                                            )
                                                          ],
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              "assets/greenop3.png",
                                                            ),
                                                            fit: BoxFit.fill,
                                                          )),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 0),
                                                              child: Container(
                                                                height: 80,
// color: Colors.amber,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child: Center(
                                                                    child:
                                                                        AutoSizeText(
                                                                      "See  Vedios  And  Earn  More  Coins",
                                                                      style: GoogleFonts.koHo(
                                                                          textStyle: Theme.of(context).textTheme.headline1,
//  fontSize: 20,
                                                                          fontWeight: FontWeight.w800,
                                                                          fontStyle: FontStyle.italic,
                                                                          color: Colors.black54),
                                                                      maxLines:
                                                                          2,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Color.fromARGB(
                                                                                150,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            spreadRadius:
                                                                                3,
                                                                            blurRadius:
                                                                                5,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      child: Container(
                                                                          height: 30,
                                                                          width: 90,
// color: Colors.green,
                                                                          decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(12),
                                                                              gradient: LinearGradient(colors: [
                                                                                Color.fromARGB(0, 0, 0, 0),
                                                                                Color.fromARGB(0, 0, 0, 0),
                                                                              ]),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  color: Color.fromARGB(150, 0, 0, 0),
                                                                                  spreadRadius: 3,
                                                                                  blurRadius: 5,
                                                                                  offset: Offset(
                                                                                    0,
                                                                                    0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              image: DecorationImage(
                                                                                image: AssetImage(
                                                                                  "assets/greenop2.png",
                                                                                ),
                                                                                fit: BoxFit.fill,
                                                                              )),
                                                                          child: Center(
                                                                            child:
                                                                                Container(
// color: Colors.green,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20),
                                                                                gradient: LinearGradient(colors: [
                                                                                  Color.fromARGB(0, 0, 0, 0),
                                                                                  Color.fromARGB(0, 0, 0, 0),
                                                                                ]),
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    color: Color.fromARGB(57, 0, 0, 0),
                                                                                    spreadRadius: 3,
                                                                                    blurRadius: 5,
                                                                                    offset: Offset(
                                                                                      0,
                                                                                      0,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),

                                                                              child: Padding(
                                                                                padding: EdgeInsets.only(right: 0, left: 0),
                                                                                child: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Container(
// color: Colors.amber,
                                                                                      height: 25,
                                                                                      width: 55,

// color: Colors.red,
                                                                                      child: AutoSizeText("500",
                                                                                          // "1000",
                                                                                          style: GoogleFonts.lato(
                                                                                            textStyle: Theme.of(context).textTheme.headline1,
                                                                                            // fontSize: 25,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontStyle: FontStyle.italic,
                                                                                            color: Colors.white,
                                                                                          )),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(left: 0),
                                                                                      child: Container(
                                                                                        height: 20,

                                                                                        // color: Colors.red,

                                                                                        child: Image.asset(
                                                                                          "assets/coin2.png",
                                                                                          // "assets/chemistrylotti.json",
                                                                                          // height: 250,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ))),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 30,
                                                                      left: 5,
                                                                      right: 5),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SpringButton(
                                                                      SpringButtonType
                                                                          .OnlyScale,
                                                                      Container(
                                                                        height:
                                                                            50,
                                                                        width:
                                                                            50,
// color: Colors.red,

                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(20),
                                                                            gradient: LinearGradient(colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                color: Color.fromARGB(150, 0, 0, 0),
                                                                                spreadRadius: 3,
                                                                                blurRadius: 6,
                                                                                offset: Offset(
                                                                                  0,
                                                                                  0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            image: DecorationImage(
                                                                              image: AssetImage(
                                                                                "assets/wrong.png",
                                                                              ),
                                                                              fit: BoxFit.fill,
                                                                            )),
                                                                      ),
                                                                      onTapDown:
                                                                          (_) async =>
                                                                              {
                                                                                widget.player.play('w.mp3'),
                                                                                await Future.delayed(Duration(seconds: 1)),
                                                                                Navigator.of(context).pop(),
                                                                              }),
                                                                  SpringButton(
                                                                      SpringButtonType
                                                                          .OnlyScale,
                                                                      Container(
                                                                        height:
                                                                            50,
                                                                        width:
                                                                            50,
// color: Colors.red,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(20),
                                                                            gradient: LinearGradient(colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                color: Color.fromARGB(150, 0, 0, 0),
                                                                                spreadRadius: 3,
                                                                                blurRadius: 6,
                                                                                offset: Offset(
                                                                                  0,
                                                                                  0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            image: DecorationImage(
                                                                              image: AssetImage(
                                                                                "assets/right.png",
                                                                              ),
                                                                              fit: BoxFit.fill,
                                                                            )),
                                                                      ),
                                                                      onTapDown:
                                                                          (_) async =>
                                                                              {
                                                                                widget.player.play('w.mp3'),
                                                                                await Future.delayed(Duration(seconds: 0)),
                                                                                Navigator.of(context).pop(),
                                                                                FacebookInterstitialAd.loadInterstitialAd(
                                                                                    placementId: "616076523573705_616096503571707",
                                                                                    listener: (result, value) async {
                                                                                      if (result == InterstitialAdResult.LOADED) {
                                                                                        FacebookInterstitialAd.showInterstitialAd();
                                                                                      }
                                                                                      setState(() async {
                                                                                        limit = 14;
                                                                                        await Future.delayed(Duration(seconds: 1));
                                                                                        showcoinsdialouge();
                                                                                        dothis3();
                                                                                      });
                                                                                    }),
                                                                              }),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ))),
                                            ],
                                          ),
                                        ));
                              },
                              child: Container(
                                height: 40,
                                // color: Colors.amber,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Center(
                                    child: AutoSizeText(
                                      "+",
                                      style: GoogleFonts.koHo(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                          //  fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: Color.fromARGB(
                                              255, 231, 231, 231)),
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 85,
// color: Colors.green,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(136, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 6,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/greenop2.png",
                                        ),
                                        fit: BoxFit.fill)),

                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 5),
                                  child: Container(
                                    color: Colors.black12,
                                    child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Center(
                                          child: Container(
// color: Colors.amber,
                                            height: 25,
                                            width: 55,
// color: Colors.red,
                                            child: AutoSizeText(
                                                "${widget.coinsshowss ?? 0}",
// "1000",
                                                style: GoogleFonts.lato(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline1,
// fontSize: 25,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2),
                                          child: Container(
                                            height: 20,
// width: 26,
// color: Colors.red,

                                            child: Image.asset(
                                              "assets/coin2.png",
// "assets/chemistrylotti.json",
// height: 250,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                color: Colors.white.withOpacity(0.1),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.blue.withOpacity(0.3),
                  ],
                ),
//--code to remove border
                border: Border.fromBorderSide(BorderSide.none),
                shadowStrength: 5,
// shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.white.withOpacity(0.24),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
// height: MediaQuery.of(context).size.height,
// height: 850,
// backgroundColor: Colors.black.withOpacity(0.4),
// decoration: BoxDecoration(
//     image: DecorationImage(
//         image: AssetImage(
//           "assets/greenbackground2.png",
//         ),
//         fit: BoxFit.cover)),
                    child: Container(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
// color: Colors.black,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Column(children: [
                            InkWell(
                              onTap: () {
// resetValue();
// collect1();
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: ColumnSuper(
                                  outerDistance: -20,
                                  children: [],
                                ),
                              ),
                            ),
                            GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  childAspectRatio: _aspectRatio,
                                ),
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: widget.levelsshows.length,
                                itemBuilder: (context, index) {
                                  return index % 2 == 0
                                      ? DelayedDisplay(
                                          delay: Duration(milliseconds: 500),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                child: Text(
                                                    widget.topicsToshow[index],
// "1000",
                                                    style: GoogleFonts.koHo(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline1,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 0),
                                                child: InkWell(
                                                  onTap: () {
                                                    if (widget.showjson[0] ==
                                                        "assets/standflevel1.json") {
                                                      ifcondition(index);
                                                    } else if (widget
                                                            .showjson[0] ==
                                                        "assets/formulaqlevel1.json") {
                                                      forlevelupf(index);
                                                    } else if (widget
                                                            .showjson[0] ==
                                                        "assets/qansqlevel1.json") {
                                                      forlevelupq(index);
                                                    } else if (widget
                                                            .showjson[0] ==
                                                        "assets/randomlevel.json") {
                                                      forlevelupa(index);
                                                    } else if (widget
                                                            .showjson[0] ==
                                                        "assets/chemistrylevel1.json") {
                                                      forlevelupc(index);
                                                    }
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20,
                                                            top: 20),
                                                    child: Container(
                                                      height: 85,
// width: 340,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color
                                                                  .fromARGB(136,
                                                                      0, 0, 0),
                                                              spreadRadius: 2,
                                                              blurRadius: 6,
                                                              offset: Offset(
                                                                0,
                                                                0,
                                                              ),
                                                            )
                                                          ],
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              "assets/greenop2.png",
                                                            ),
                                                            fit: BoxFit.fill,
                                                          )),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 5,
                                                                right: 0),
                                                        child: Center(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Container(
                                                                width: 120,
// color: Colors.amber,
                                                                child:
                                                                    AutoSizeText(
                                                                  widget.levelsshows[
                                                                      index],
                                                                  style:
                                                                      GoogleFonts
                                                                          .koHo(
                                                                    textStyle: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .headline1,
// fontSize: 40,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  maxLines: 1,
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 25,
                                                                width: 25,
// color: Colors.red,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        image:
                                                                            DecorationImage(
                                                                  image: AssetImage(
                                                                      widget.setlevel[
                                                                          index]),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                )),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
// Text(widget.levelscoreee,
//     style: GoogleFonts.akronim(
//       textStyle: Theme.of(context)
//           .textTheme
//           .headline1,
//       fontSize: 20,
//       fontWeight: FontWeight.w300,
//       fontStyle: FontStyle.italic,
//       color: Colors.black,
//     )),
                                            ],
                                          ),
                                        )
                                      : DelayedDisplay(
                                          delay: Duration(milliseconds: 900),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                child: Text(
                                                    widget.topicsToshow[index],
// "1000",
                                                    style: GoogleFonts.koHo(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline1,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5, left: 5),
                                                child: InkWell(
                                                  onTap: () {
                                                    if (widget.showjson[0] ==
                                                        "assets/standflevel1.json") {
                                                      ifcondition(index);
                                                    } else if (widget
                                                            .showjson[0] ==
                                                        "assets/formulaqlevel1.json") {
                                                      forlevelupf(index);
                                                    } else if (widget
                                                            .showjson[0] ==
                                                        "assets/qansqlevel1.json") {
                                                      forlevelupq(index);
                                                    } else if (widget
                                                            .showjson[0] ==
                                                        "assets/randomlevel.json") {
                                                      forlevelupa(index);
                                                    } else if (widget
                                                            .showjson[0] ==
                                                        "assets/chemistrylevel1.json") {
                                                      forlevelupc(index);
                                                    }
                                                  },
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 20,
                                                                right: 20,
                                                                top: 20),
                                                        child: Container(
                                                          height: 85,
// width: 340,
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Color
                                                                          .fromARGB(
                                                                              136,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      spreadRadius:
                                                                          2,
                                                                      blurRadius:
                                                                          6,
                                                                      offset:
                                                                          Offset(
                                                                        0,
                                                                        0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  image:
                                                                      DecorationImage(
                                                                    image:
                                                                        AssetImage(
                                                                      "assets/greenop2.png",
                                                                    ),
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  )),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 5,
                                                                    left: 0),
                                                            child: Center(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Container(
                                                                    width: 120,
                                                                    child:
                                                                        AutoSizeText(
                                                                      widget.levelsshows[
                                                                          index],
                                                                      style: GoogleFonts
                                                                          .koHo(
                                                                        textStyle: Theme.of(context)
                                                                            .textTheme
                                                                            .headline1,
// fontSize:
//     40,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      maxLines:
                                                                          1,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 25,
                                                                    width: 25,
// color: Colors.red,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            image:
                                                                                DecorationImage(
                                                                      image: AssetImage(
                                                                          widget
                                                                              .setlevel[index]),
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    )),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                }),
// Padding(
//   padding: const EdgeInsets.only(top: 0, left: 0),
//   child: Center(
//     child: Text(
//         widget.levelscoreee == null
//             ? "0"
//             : "${widget.levelscoreee}",
//         style: GoogleFonts.lato(
//           textStyle: Theme.of(context).textTheme.headline1,
//           fontSize: 40,
//           fontWeight: FontWeight.w300,
//           fontStyle: FontStyle.italic,
//           color: Colors.black,
//         )),
//   ),
// ),
// ListView.builder(
//     physics: NeverScrollableScrollPhysics(),
//     shrinkWrap: true,
//     itemCount: 10,
//     itemBuilder: (BuildContext context, int index) {
//       return InkWell(
//         onTap: () {
//           reset();
//           setState(() {
//             widget.count1 = 1;
//             setcountervalue();
//           });
//         },
//         child: Column(
//           children: [
//             ListTile(
//               leading:
//                   Image.asset(widget.setlevel[index]),
//               title: Center(
//                 child: Html(
//                   data:
//                       "<pre style = font-size:30;text-align:center;font-family:sans-serif;color:white;><i><b>${widget.setlevel[index]}</b></i></pre>",
//                 ),
//               ),
//               // widget.setlevel[index],
//             ),
//             // var doit = [
//             //   {
//             //     "9": {"2": "Europium", "3": "Einsteinium", "4": "Erunium", "5": "Erbium"},
//             //   }
//             // ];
//           ],
//         ),
//       );
//     }),
                          ])),
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
// alignment: Alignment(0.5, 1),
            child: FacebookBannerAd(
              placementId: "616076523573705_616096883571669",
              bannerSize: BannerSize.STANDARD,
              listener: (result, value) {
                switch (result) {
                  case BannerAdResult.ERROR:
                    print("Error: $value");
                    break;
                  case BannerAdResult.LOADED:
                    print("Loaded: $value");
                    break;
                  case BannerAdResult.CLICKED:
                    print("Clicked: $value");
                    break;
                  case BannerAdResult.LOGGING_IMPRESSION:
                    print("Logging Impression: $value");
                    break;
                }
              },
            ),
          ),
        ));
  }
}

// Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1,
//                     childAspectRatio: 2.6,
//                   ),
//                   physics: NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: level.length,
//                   itemBuilder: (context, index) {
//                     return index % 2 == 0
//                         ? Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 5, right: 5),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => Jsondata(
//                                                 riddleshow: riddle[index])));
//                                   },
//                                   child: Container(
//                                     height: 100,
//                                     width: 350,
//                                     // color: Colors.amber[400],
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(10),
//                                         bottomRight: Radius.circular(10),
//                                         topRight: Radius.circular(10),
//                                         bottomLeft: Radius.circular(10),
//                                       ),
//                                       child: Card(
//                                         color: Colors.amber,
//                                         elevation: 50,
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(10)),
//                                         child: Padding(
//                                           padding: const EdgeInsets.only(
//                                               top: 15, left: 70),
//                                           child: Text("${level[index]}",
//                                               style: GoogleFonts.lato(
//                                                 textStyle: Theme.of(context)
//                                                     .textTheme
//                                                     .headline1,
//                                                 fontSize: 55,
//                                                 fontWeight: FontWeight.w300,
//                                                 fontStyle: FontStyle.italic,
//                                                 color: Colors.black,
//                                               )),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )
//                         : Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(right: 5, left: 5),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => Jsondata(
//                                                   riddleshow: riddle[index],
//                                                 )));
//                                   },
//                                   child: Column(
//                                     children: [
//                                       Container(
//                                         height: 100,
//                                         width: 350,
//                                         // color: Colors.amber[200],
//                                         child: ClipRRect(
//                                           borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(10),
//                                             bottomRight: Radius.circular(10),
//                                             topRight: Radius.circular(10),
//                                             bottomLeft: Radius.circular(10),
//                                           ),
//                                           child: Card(
//                                             color: Colors.amber[300],
//                                             shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(10)),
//                                             elevation: 30,
//                                             child: Padding(
//                                               padding: const EdgeInsets.only(
//                                                   top: 15, left: 70),
//                                               child: Text("${level[index]}",
//                                                   style: GoogleFonts.lato(
//                                                     textStyle: Theme.of(context)
//                                                         .textTheme
//                                                         .headline1,
//                                                     fontSize: 55,
//                                                     fontWeight: FontWeight.w300,
//                                                     fontStyle: FontStyle.italic,
//                                                     color: Colors.black,
//                                                   )),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           );
//                   }),
//             ),
//           ),
//         ),
