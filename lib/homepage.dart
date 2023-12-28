// import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:newriddels/secondpage.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
// import 'package:riddles/secondpage.dart';
import 'package:lottie/lottie.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
// import 'package:avatar_glow/avatar_glow.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spring_button/spring_button.dart';

class Homepage extends StatefulWidget {
  final player = AudioCache();
  final Color color1;
  final Color color2;
  var levels;
  var levelscoree;
  var topicsToshow;
  int coinsshow = 0;
  int coinsshowh;
  var replacecoin;
// var countonee = 1;
// var count = 1;
// var c = 1;
// bool count = true;
  Homepage(
      {Key key,
      this.color1 = Colors.red,
      this.color2 = Colors.greenAccent,
      this.levels,
      this.levelscoree,
      this.coinsshow,
      this.coinsshowh,
      this.replacecoin,
      this.topicsToshow
// this.count
      })
      : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var glowing = false;
  var count = 1;
// var count2 = 1;
  var standforqlevels = [
    "LEVEL  1",
    "LEVEL  2",
    "LEVEL  3",
    "LEVEL  4",
    "LEVEL  5",
    "LEVEL  6",
    "LEVEL  7",
    "LEVEL  8",
    "LEVEL  9",
    "LEVEL 10",
  ];

  var formulaqlevels = [
    "LEVEL  11",
    "LEVEL  12",
    "LEVEL  13",
    "LEVEL  14",
    "LEVEL  15",
    "LEVEL  16",
    "LEVEL  17",
    "LEVEL  18",
    "LEVEL  19",
    "LEVEL 20",
// "LEVEL 11",
  ];
  var qansqlevels = [
    "LEVEL  21",
    "LEVEL  22",
    "LEVEL  23",
    "LEVEL  24",
    "LEVEL  25",
    "LEVEL  62",
    "LEVEL  72",
    "LEVEL  82",
    "LEVEL  29",
    "LEVEL 30",
// "LEVEL 11",
// "LEVEL 12",
  ];

  var chemistrylevel = [
    "LEVEL  31",
    "LEVEL  32",
    "LEVEL  33",
    "LEVEL  34",
    "LEVEL  35",
    "LEVEL  36",
    "LEVEL  37",
    "LEVEL  38",
    "LEVEL  39",
    "LEVEL  40",
  ];
  var randomqlevels = [
    "LEVEL  41",
    "LEVEL  42",
    "LEVEL  43",
    "LEVEL  44",
    "LEVEL  45",
    "LEVEL  46",
    "LEVEL  47",
    "LEVEL  48",
    "LEVEL  49",
    "LEVEL  50",
    "LEVEL  51",
    "LEVEL  52",
    "LEVEL  53",
    "LEVEL  54",
    "LEVEL  55",
    "LEVEL  56",
    "LEVEL  57",
    "LEVEL  58",
    "LEVEL  59",
    "LEVEL  60",
    "LEVEL  61",
    "LEVEL  62",
    "LEVEL  63",
    "LEVEL  64",
    "LEVEL  65",
    "LEVEL  66",
    "LEVEL  67",
    "LEVEL  68",
    "LEVEL  69",
    "LEVEL  70",
  ];

  var standfor = [
    "assets/standflevel1.json",
    "assets/standflevel2.json",
    "assets/standflevel3.json",
    "assets/standflevel4.json",
    "assets/standflevel5.json",
    "assets/standflevel6.json",
    "assets/standflevel7.json",
    "assets/standflevel8.json",
    "assets/standflevel9.json",
    "assets/standflevel10.json",
  ];

  var formulaq = [
    "assets/formulaqlevel1.json",
    "assets/formulaqlevel2.json",
    "assets/formulaqlevel3.json",
    "assets/formulaqlevel4.json",
    "assets/formulaqlevel5.json",
    "assets/formulaqlevel6.json",
    "assets/formulaqlevel7.json",
    "assets/formulaqlevel8.json",
    "assets/formulaqlevel9.json",
    "assets/formulaqlevel10.json",
  ];
  var qansq = [
    "assets/qansqlevel1.json",
    "assets/qansqlevel2.json",
    "assets/qansqlevel3.json",
    "assets/qansqlevel4.json",
    "assets/qansqlevel5.json",
    "assets/qansqlevel6.json",
    "assets/qansqlevel7.json",
    "assets/qansqlevel8.json",
    "assets/qansqlevel9.json",
    "assets/qansqlevel10.json",
  ];
  var randomq = [
    "assets/randomlevel.json",
    "assets/randomlevel2.json",
    "assets/randomlevel3.json",
    "assets/randomlevel4.json",
    "assets/randomlevel5.json",
    "assets/randomlevel6.json",
    "assets/randomlevel7.json",
    "assets/randomlevel8.json",
    "assets/randomlevel9.json",
    "assets/randomlevel10.json",
    "assets/randomlevel11.json",
    "assets/randomlevel12.json",
    "assets/randomlevel13.json",
    "assets/randomlevel14.json",
    "assets/randomlevel15.json",
    "assets/randomlevel16.json",
    "assets/randomlevel17.json",
    "assets/randomlevel18.json",
    "assets/randomlevel19.json",
    "assets/randomlevel20.json",
    "assets/randomlevel21.json",
    "assets/randomlevel22.json",
    "assets/randomlevel23.json",
    "assets/randomlevel24.json",
    "assets/randomlevel25.json",
    "assets/randomlevel26.json",
    "assets/randomlevel27.json",
    "assets/randomlevel28.json",
    "assets/randomlevel29.json",
    "assets/randomlevel30.json",
  ];
  var chemistryquestions = [
    "assets/chemistrylevel1.json",
    "assets/chemistrylevel2.json",
    "assets/chemistrylevel3.json",
    "assets/chemistrylevel4.json",
    "assets/chemistrylevel5.json",
    "assets/chemistrylevel6.json",
    "assets/chemistrylevel7.json",
    "assets/chemistrylevel8.json",
    "assets/chemistrylevel9.json",
    "assets/chemistrylevel10.json",
  ];

  var playlist = [
    "1 :  Periodic table Quizes?",
    "2 :  Formulas Quizes?",
    "3 :  Q and Ans Quizes?",
    "4 :  All Random Quizes?",
    "5 :  Chemistry Master ?",
  ];
  var levelup = [
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
  ];
  var lock = [
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
  ];
  var lockall = [
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
    "assets/unlock.png",
  ];
  var questions = [
    "100+ Questoins",
    "200+ Questoins",
    "300+ Questoins",
    "500+ Questoins",
    "New 500+ Questoins",
  ];
  var topics = [
    "  Periodic Table 1  ",
    "  Periodic Table 2  ",
    "  Periodic Table 3  ",
    "  Periodic Table 4  ",
    "  Periodic Table 5  ",
    "  Periodic Table 6  ",
    "  Periodic Table 7  ",
    "  Periodic Table 8  ",
    "  Periodic Table 9  ",
    "  Periodic Table 10 ",
  ];
  var topics2 = [
    "  Formulas Quiz 1  ",
    "  Formulas Quiz 2  ",
    "  Formulas Quiz 3  ",
    "  Formulas Quiz 4  ",
    "  Formulas Quiz 5  ",
    "  Formulas Quiz 6  ",
    "  Formulas Quiz 7  ",
    "  Formulas Quiz 8  ",
    "  Formulas Quiz 9  ",
    "  Formulas Quiz 10 ",
  ];
  var topics3 = [
    "Atoms and Elements 1",
    "Atoms and Elements 2",
    "Chemical Reactions  1",
    "Chemical Reactions  2",
    "Periodic Table of Elements 1",
    "Periodic Table of Elements 2",
    "Periodic Table of Elements 3",
    "Stoichiometry",
    "Chemical Bonds 1",
    "Chemical Bonds 2",
  ];
  var topics4 = [
    "Acids, Bases, and pH 1",
    "Acids, Bases, and pH 2",
    "Atoms and Elements ",
    "Organic Chemistry 1",
    "Organic Chemistry 2",
    "Inorganic Chemistry 1",
    "Inorganic Chemistry 2",
    "Inorganic Chemistry 3",
    "Physical Chemistry 1",
    "Physical Chemistry 2",
  ];
  var topics5 = [
    "Physical Chemistry 3",
    "Thermodynamics 1",
    "Thermodynamics 2",
    "Chemical Equilibrium",
    "Chemical Kinetics",
    "Solutions and Solubility",
    "Electrochemistry",
    "Nuclear Chemistry",
    "Coordination Chemistry",
    "Biochemistry",
    "Environmental Chemistry",
    "Analytical Chemistry",
    "Spectroscopy",
    "Polymer Chemistry",
    "Medicinal Chemistry",
    "Materials Science",
    "Quantum Chemistry",
    "Computational Chemistry",
    "Industrial Chemistry",
    "Green Chemistry",
    "Food Chemistry",
    "Advanced Organic Chemistry 1",
    "Advanced Organic Chemistry 2",
    "Nanomaterials and Nanotechnology",
    "Inorganic Synthesis and Characterization",
    "Advanced Organic Reaction Mechanisms",
    "Solid State Chemistry",
    "Surface Chemistry and Catalysis",
    "Physical Organic Chemistry",
    "Electrochemistry",
  ];

  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache;
  PlayMusic() async {
    await audioCache.loop('d3.mp3');
  }

  PauseMusic() async {
    await audioPlayer.pause();
  }

  ResumeMusic() async {
    await audioPlayer.resume();
  }

  final player = AudioCache();

  void navigator(levels, showq, topicsToshow) async {
    await Future.delayed(Duration(milliseconds: 500));
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Secondpage(
                  levelsshows: levels,
                  showjson: showq,
                  levelscoreee: widget.levelscoree,
                  coinsshowss: widget.coinsshow,
                  selectedcategery: progresupselected,
                  topicsToshow: topicsToshow,

// levelup: levelups
// levelscoreee:
//     levelscoree,
                )));
  }

  showdilog() {
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
                        height: 220,
                        width: 230,
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
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Container(
                                  height: 80,
// color: Colors.amber,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: AutoSizeText(
                                        "Need 10000 Coins To Unlock..?",
                                        style: GoogleFonts.koHo(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline1,
//  fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black54),
                                        maxLines: 2,
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
                                              color:
                                                  Color.fromARGB(150, 0, 0, 0),
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
                                                      BorderRadius.circular(20),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color.fromARGB(0, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0),
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
                                                          "10000",
// "1000",
                                                          style:
                                                              GoogleFonts.lato(
                                                            textStyle: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline1,
// fontSize: 25,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color: Colors.white,
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
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
                                            ))),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                              gradient: LinearGradient(colors: [
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
                                              player.play('w.mp3'),
                                              await Future.delayed(
                                                  Duration(seconds: 1)),
                                              Navigator.of(context).pop(),
                                            }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))),
              ],
            ));
  }

  void showcoinsdialouge() async {
    widget.player.play('coins.mp3');
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

  void unlock0() {
// player.play('r.mp3');
// widget.player.play('coins.mp3');
    setState(() async {
      lock[0] = levelup[0];
      limit = 49;
      await Future.delayed(const Duration(milliseconds: 1));
      dothis2();
    });
  }

  void unlock1() {
// player.play('r.mp3');
    widget.player.play('coins.mp3');
    setState(() async {
      lock[1] = levelup[1];
      limit = 49;
      await Future.delayed(const Duration(milliseconds: 1));
      dothis2();
    });
  }

  void unlock2() {
// player.play('r.mp3');
    widget.player.play('coins.mp3');
    setState(() async {
      lock[2] = levelup[2];
      limit = 49;
      await Future.delayed(const Duration(milliseconds: 1));
      dothis2();
    });
  }

  void unlock3() {
// player.play('r.mp3');
    widget.player.play('coins.mp3');
    setState(() async {
      lock[3] = levelup[3];
      limit = 49;
      await Future.delayed(const Duration(milliseconds: 1));
      dothis2();
    });
  }

  void unlock4() {
// player.play('r.mp3');
    widget.player.play('coins.mp3');
    setState(() async {
      lock[4] = levelup[4];
      limit = 49;
      await Future.delayed(const Duration(milliseconds: 1));
      dothis2();
    });
  }

  void function(index) {
    var levels;
    var showq;
    var topicsToshow;

    if (index == 0) {
      setState(() {
        levels = standforqlevels;
        showq = standfor;
        progresupselected = 1;
        topicsToshow = topics;
        setcountervalue();
// [index]
      });

      if (lock[0] != levelup[0]) {
        if (widget.coinsshow > 9999) {
          unlock0();
        }
      }
      if (lock[0] == levelup[0]) {
        player.play('r.mp3');
        navigator(levels, showq, topicsToshow);
      }
      if (count == 1) {
        collect();
      }
// navigator(levels, showq);
    }
    if (index == 1) {
      setState(() {
        levels = formulaqlevels;
        showq = formulaq;
        progresupselected = 2;
        topicsToshow = topics2;
        setcountervalue();
      });

      if (widget.coinsshow > 9999) {
        if (lock[1] != levelup[1]) {
          if (lock[0] == levelup[0]) {
            unlock1();
          }
        }
      }
      if (lock[1] == levelup[1]) {
        setState(() {
          player.play('r.mp3');
          navigator(levels, showq, topicsToshow);
        });
      }
      if (lock[1] != levelup[1]) {
// navigator(levels, showq);
        widget.player.play('w.mp3');
        showdilog();
      } else {}
    }
    if (index == 2) {
      setState(() {
        levels = qansqlevels;
        showq = qansq
// [index]
            ;
        progresupselected = 3;
        topicsToshow = topics3;
        setcountervalue();
      });

      if (widget.coinsshow > 9999) {
        if (lock[2] != levelup[2]) {
          if (lock[1] == levelup[1]) {
            unlock2();
          }
// navigator(levels, showq);
        }
      }
      if (lock[2] != levelup[2]) {
        widget.player.play('w.mp3');
        showdilog();
      }
      if (lock[2] == levelup[2]) {
        player.play('r.mp3');
        navigator(levels, showq, topicsToshow);
      } else {}
    }
    if (index == 3) {
      setState(() {
        levels = chemistrylevel;
        showq = chemistryquestions

// [index]
            ;
        progresupselected = 4;
        topicsToshow = topics4;
        setcountervalue();
      });

      if (widget.coinsshow > 9999) {
        if (lock[3] != levelup[3]) {
          if (lock[2] == levelup[2]) {
            unlock3();
          }
// navigator(levels, showq);
        }
      }
      if (lock[3] != levelup[3]) {
        widget.player.play('w.mp3');
        showdilog();
      }
      if (lock[3] == levelup[3]) {
        player.play('r.mp3');
        navigator(levels, showq, topicsToshow);
      } else {}
    }

    if (index == 4) {
      setState(() {
        levels = randomqlevels;
        showq = randomq

// [index]
            ;
        progresupselected = 5;
        topicsToshow = topics5;
        setcountervalue();
      });

      if (widget.coinsshow > 9999) {
        if (lock[4] != levelup[4]) {
          if (lock[3] == levelup[3]) {
            unlock4();
          }
// navigator(levels, showq);
        }
      }
      if (lock[4] != levelup[4]) {
        widget.player.play('w.mp3');
        showdilog();
      }
      if (lock[4] == levelup[4]) {
        player.play('r.mp3');
        navigator(levels, showq, topicsToshow);
      } else {}
    }
    colorchangings();
  }

  void collect() {
    widget.player.play('itslock.mp3');

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
                        width: 240,
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
                                  height: 80,
// color: Colors.amber,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: AutoSizeText(
                                        "Collect  Your  First  Reward...",
                                        style: GoogleFonts.koHo(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline1,
//  fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black54),
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
                                              color:
                                                  Color.fromARGB(150, 0, 0, 0),
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
                                                      BorderRadius.circular(20),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color.fromARGB(0, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0),
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
                                                          "5000",
// "1000",
                                                          style:
                                                              GoogleFonts.lato(
                                                            textStyle: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline1,
// fontSize: 25,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color: Colors.white,
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
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
                                            ))),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: SpringButton(
                                  SpringButtonType.OnlyScale,
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
                                          height: 40,
                                          width: 110,
// color: Colors.green,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/greenop2.png",
                                                ),
                                                fit: BoxFit.fill,
                                              )),
                                          child: Center(
                                            child: Container(
                                              width: 60,
                                              child: AutoSizeText(
                                                "Collect",
                                                style: GoogleFonts.koHo(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline1,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
// maxLines: 1,
                                              ),
                                            ),
                                          ))),
                                  onTap: () {
                                    setState(() async {
                                      limit = 24;
                                      await Future.delayed(
                                          Duration(milliseconds: 1));
                                      dothis();
                                      Navigator.of(context).pop();
                                      await Future.delayed(
                                          Duration(milliseconds: 100));
                                      showcoinsdialouge();
                                    });

// setState(() {

//   setcountervalue();
// });
                                  },
                                ),
                              )
                            ],
                          ),
                        ))),
              ],
            ));
  }

  getcoins() async {
    SharedPreferences preffppp = await SharedPreferences.getInstance();
    var coinss = preffppp.getInt('coins');
    return coinss;
  }

  getcollect() async {
    SharedPreferences preffpppp = await SharedPreferences.getInstance();
    var collect = preffpppp.getInt('collect');
    return collect;
  }

  getlevelup() async {
    SharedPreferences d = await SharedPreferences.getInstance();
    var unlock = d.getStringList('unlockit');
    return unlock;
  }

  getprogresupselected() async {
    SharedPreferences progres = await SharedPreferences.getInstance();
    var prog = progres.getInt('progresu');
    return prog;
  }

// progres bar in gridview

  getprogresup0() async {
    SharedPreferences progres1 = await SharedPreferences.getInstance();
    var prog1 = progres1.getInt('progres0');
    return prog1;
  }

  getprogresup1() async {
    SharedPreferences progres2 = await SharedPreferences.getInstance();
    var prog2 = progres2.getInt('progres1');
    return prog2;
  }

  getprogresup2() async {
    SharedPreferences progres3 = await SharedPreferences.getInstance();
    var prog3 = progres3.getInt('progres2');
    return prog3;
  }

  getprogresup3() async {
    SharedPreferences progres4 = await SharedPreferences.getInstance();
    var prog4 = progres4.getInt('progres3');
    return prog4;
  }

  getprogresup4() async {
    SharedPreferences progres4 = await SharedPreferences.getInstance();
    var prog4 = progres4.getInt('progres4');
    return prog4;
  }

  setcountervalue() async {
    SharedPreferences preffppp = await SharedPreferences.getInstance();
    preffppp.setInt('coins', widget.coinsshow);

    SharedPreferences preffpppp = await SharedPreferences.getInstance();
    preffpppp.setInt('collect', count);

    SharedPreferences d = await SharedPreferences.getInstance();
    d.setStringList('unlockit', lock);

    SharedPreferences progres = await SharedPreferences.getInstance();
    progres.setInt('progresu', progresupselected);

    SharedPreferences progres1 = await SharedPreferences.getInstance();
    progres1.setInt('progres0', progresup[0]);

    SharedPreferences progres2 = await SharedPreferences.getInstance();
    progres2.setInt('progres1', progresup[1]);

    SharedPreferences progres3 = await SharedPreferences.getInstance();
    progres3.setInt('progres2', progresup[2]);

    SharedPreferences progres4 = await SharedPreferences.getInstance();
    progres4.setInt('progres3', progresup[3]);
    SharedPreferences progres5 = await SharedPreferences.getInstance();
    progres4.setInt('progres4', progresup[4]);

// SharedPreferences colorchange = await SharedPreferences.getInstance();
// colorchange.setDefaultValue('change', changeto);
  }

  @override
  void initState() {
// audioCache = AudioCache(fixedPlayer: audioPlayer);
// PlayMusic();
    checkforcountervalue();
    progresbars();
// setState(() async {
//   await collect();
// });
    super.initState();

// widget.coinsshow = widget.coinsshowh ?? "5";
// setcountervalue();

// widget.coinsshow = widget.coinsshow;
// setcountervalue();
// collect();
  }

  progresbars() async {
    var forprogresup0 = await getprogresup0() ?? progresup[0];
    var forprogresup1 = await getprogresup1() ?? progresup[1];
    var forprogresup2 = await getprogresup2() ?? progresup[2];
    var forprogresup3 = await getprogresup3() ?? progresup[3];
    var forprogresup4 = await getprogresup4() ?? progresup[4];
    setState(() {
      progresup[0] = forprogresup0;
      progresup[1] = forprogresup1;
      progresup[2] = forprogresup2;
      progresup[3] = forprogresup3;
      progresup[4] = forprogresup4;
    });
    setcountervalue();
  }

  checkforcountervalue() async {
    var forcoins = await getcoins() ?? widget.coinsshow;
    var forcollect = await getcollect() ?? count;
    var forunlock = await getlevelup() ?? lock;
    var forprogresupselected =
        await getprogresupselected() ?? progresupselected;

// var showjsonnn = await getshowjsonn() ?? widget.showjson;
// var showlevels = await getshowlevelss() ?? widget.levelsshows;
    setState(() {
      widget.coinsshow = forcoins;
      widget.coinsshow = widget.coinsshowh ?? widget.coinsshow;
      count = forcollect;
      lock = forunlock;
      progresupselected = forprogresupselected;

// setcountervalue();
    });
    setcountervalue();
    colorchangings();
    await Future.delayed(const Duration(milliseconds: 1000));

    if (count == 1) {
      reset();
      await Future.delayed(Duration(milliseconds: 100));
      collect();
    } else {}

    setState(() {
      if (progresupselected == 1) {
        if (widget.levelscoree == 100) {
          progresup[0] = progresup[0] + 6;
        }
        if (widget.levelscoree == 90) {
          progresup[0] = progresup[0] + 4;
        }
        if (widget.levelscoree == 80) {
          progresup[0] = progresup[0] + 3;
        }
        if (widget.levelscoree == 70) {
          progresup[0] = progresup[0] + 2;
        }
        if (widget.levelscoree == 60) {
          progresup[0] = progresup[0] + 1;
        }
        if (progresup[0] > 100) {
          progresup[0] = 100;
        }
      }
      if (progresupselected == 2) {
        if (widget.levelscoree == 100) {
          progresup[1] = progresup[1] + 6;
        }
        if (widget.levelscoree == 90) {
          progresup[1] = progresup[1] + 4;
        }
        if (widget.levelscoree == 80) {
          progresup[1] = progresup[1] + 3;
        }
        if (widget.levelscoree == 70) {
          progresup[1] = progresup[1] + 2;
        }
        if (widget.levelscoree == 60) {
          progresup[1] = progresup[1] + 1;
        }
        if (progresup[1] > 100) {
          progresup[1] = 100;
        }
      }
      if (progresupselected == 3) {
        if (widget.levelscoree == 100) {
          progresup[2] = progresup[2] + 6;
        }
        if (widget.levelscoree == 90) {
          progresup[2] = progresup[2] + 4;
        }
        if (widget.levelscoree == 80) {
          progresup[2] = progresup[2] + 3;
        }
        if (widget.levelscoree == 70) {
          progresup[2] = progresup[2] + 2;
        }
        if (widget.levelscoree == 60) {
          progresup[2] = progresup[2] + 1;
        }
        if (progresup[2] > 100) {
          progresup[2] = 100;
        }
      }
      if (progresupselected == 4) {
        if (widget.levelscoree == 100) {
          progresup[3] = progresup[3] + 6;
        }
        if (widget.levelscoree == 90) {
          progresup[3] = progresup[3] + 4;
        }
        if (widget.levelscoree == 80) {
          progresup[3] = progresup[3] + 3;
        }
        if (widget.levelscoree == 70) {
          progresup[3] = progresup[3] + 2;
        }
        if (widget.levelscoree == 60) {
          progresup[3] = progresup[3] + 1;
        }
        if (progresup[3] > 100) {
          progresup[3] = 100;
        }
      }
      if (progresupselected == 5) {
        if (widget.levelscoree == 100) {
          progresup[4] = progresup[4] + 6;
        }
        if (widget.levelscoree == 90) {
          progresup[4] = progresup[4] + 4;
        }
        if (widget.levelscoree == 80) {
          progresup[4] = progresup[4] + 3;
        }
        if (widget.levelscoree == 70) {
          progresup[4] = progresup[4] + 2;
        }
        if (widget.levelscoree == 60) {
          progresup[4] = progresup[4] + 1;
        }
        if (progresup[4] > 100) {
          progresup[4] = 100;
        }
      }

      setcountervalue();
    });

//  else if (progresup == 2) {
//   if (widget.levelscoree == 100) {
//     //  progressnum[1] == progressnum[1] + 12;
//   }
// } else if (progresup == 3) {
//   if (widget.levelscoree == 100) {
//     //  progressnum[2] == progressnum[2] + 12;
//   }
// } else if (progresup == 4) {
//   if (widget.levelscoree == 100) {
//     //  progressnum[3] == progressnum[3] + 12;
//   }
// }
    setcountervalue();
  }

  void colorchangings() {
    setState(() {
      if (lock[0] == levelup[0]) {
        changeto[0] = changeto2[0];
      }
      if (lock[1] == levelup[1]) {
        changeto[1] = changeto2[1];
      }
      if (lock[2] == levelup[2]) {
        changeto[2] = changeto2[2];
      }
      if (lock[3] == levelup[3]) {
        changeto[3] = changeto2[3];
      }
    });
  }

// var color;
// bool changeto = false;
  var changeto = [
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
  ];
  var changeto2 = [
    Colors.lightGreenAccent,
    Colors.lightGreenAccent,
    Colors.lightGreenAccent,
    Colors.lightGreenAccent,
  ];
// int prog1 = 30;
// var prog2 = 20;
// var prog3 = 10;
// var prog4 = 50;
// void progresup(){
//   var progresup =  List(4);
//    progresup[0]=30;
//    progresup[1]=50;
//    progresup[2]=20;
//    progresup[3]=10;
// }

// var progressnum2 = [
//   "0",
//   "0",
//   "0",
//   "0",
// ];
  var progresupselected = 0;

  var progresup = [0, 0, 0, 0, 0];

  var progresreset = [
    0,
    0,
    0,
    0,
    0,
  ];

  var limit = 0;
  void dothis() async {
    widget.player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 50));
      setState(() {
        widget.coinsshow = widget.coinsshow + 200;
      });
    }
    setState(() {
      count = count + 1;
      setcountervalue();
    });
  }

// 22222222222222222

  void dothis2() async {
    widget.player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 50));
      setState(() {
        widget.coinsshow = widget.coinsshow - 200;
      });
    }
    setState(() {
      count = count + 1;
      setcountervalue();
    });
  }

  void dothis3() async {
// player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        widget.coinsshow = widget.coinsshow + 10;
      });
    }
    setState(() {
      setcountervalue();
    });
  }

  reset() {
    setState(() {
      widget.coinsshow = 0;
      count = 1;
      lock = lockall;

      progresupselected = progresupselected;
// progresup[0] = progresreset[0];
// progresup[1] = progresreset[1];
// progresup[2] = progresreset[2];
// progresup[3] = progresreset[3];
      progresup = progresreset;
// lock = levelup;
      setcountervalue();
    });
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

  Image _image;

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 850;

  @override
  Widget build(BuildContext context) {
    var _crossAxisSpacing = 0;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 1;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = 130;
    var _aspectRatio = _width / cellHeight;
    return Scaffold(
      backgroundColor: Color.fromARGB(227, 48, 47, 47).withOpacity(0.8),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        elevation: 0,
        leading: Text(
          "",
          style: GoogleFonts.breeSerif(
              fontSize: 25, fontWeight: FontWeight.w800, color: Colors.black),
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
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Center(
                                                        child: AutoSizeText(
                                                          "See  Vedios  And  Earn  More  Coins",
                                                          style:
                                                              GoogleFonts.koHo(
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
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
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
                                                                  Color
                                                                      .fromARGB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  Color
                                                                      .fromARGB(
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
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
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
                                                                      image:
                                                                          DecorationImage(
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
                                                                        BorderRadius.circular(
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
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Container(
                                                                          // color: Colors.amber,
                                                                          height:
                                                                              25,
                                                                          width:
                                                                              55,

                                                                          // color: Colors.red,
                                                                          child: AutoSizeText(
                                                                              "600",
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
                                                                          padding:
                                                                              const EdgeInsets.only(left: 0),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                20,

                                                                            // color: Colors.red,

                                                                            child:
                                                                                Image.asset(
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
                                                                    player.play(
                                                                        'w.mp3'),
                                                                    await Future.delayed(Duration(
                                                                        seconds:
                                                                            1)),
                                                                    Navigator.of(
                                                                            context)
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
                                                                    player.play(
                                                                        'w.mp3'),
                                                                    await Future.delayed(Duration(
                                                                        seconds:
                                                                            0)),
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop(),
                                                                    FacebookInterstitialAd
                                                                        .loadInterstitialAd(
                                                                            placementId:
                                                                                "616076523573705_616096503571707",
                                                                            listener:
                                                                                (result, value) async {
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
                            player.play('w.mp3');

                            showDialog(
                                context: context,
                                builder: (context) => Padding(
                                      padding: const EdgeInsets.only(top: 10),
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
                                                    BorderRadius.circular(50),
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
                                              ),
                                              child: Container(
                                                  height: 250,
                                                  width: 250,
// color: Colors.green,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      gradient: LinearGradient(
                                                          colors: [
                                                            Color.fromARGB(
                                                                0, 0, 0, 0),
                                                            Color.fromARGB(
                                                                0, 0, 0, 0),
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
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 0),
                                                          child: Container(
                                                            height: 80,
// color: Colors.amber,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Center(
                                                                child:
                                                                    AutoSizeText(
                                                                  "See  Vedios  And  Earn  More  Coins",
                                                                  style: GoogleFonts
                                                                      .koHo(
                                                                          textStyle: Theme.of(context)
                                                                              .textTheme
                                                                              .headline1,
//  fontSize: 20,
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          fontStyle: FontStyle
                                                                              .italic,
                                                                          color:
                                                                              Colors.black54),
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
                                                                        BorderRadius.circular(
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
                                                                            image:
                                                                                AssetImage(
                                                                              "assets/greenop2.png",
                                                                            ),
                                                                            fit:
                                                                                BoxFit.fill,
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
                                                                                LinearGradient(colors: [
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

                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 0, left: 0),
                                                                            child:
                                                                                Row(
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
                                                                    height: 50,
                                                                    width: 50,
// color: Colors.red,

                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(20),
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
                                                                                6,
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
                                                                            "assets/wrong.png",
                                                                          ),
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        )),
                                                                  ),
                                                                  onTapDown:
                                                                      (_) async =>
                                                                          {
                                                                            player.play('w.mp3'),
                                                                            await Future.delayed(Duration(seconds: 1)),
                                                                            Navigator.of(context).pop(),
                                                                          }),
                                                              SpringButton(
                                                                  SpringButtonType
                                                                      .OnlyScale,
                                                                  Container(
                                                                    height: 50,
                                                                    width: 50,
// color: Colors.red,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(20),
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
                                                                                6,
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
                                                                            "assets/right.png",
                                                                          ),
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        )),
                                                                  ),
                                                                  onTapDown:
                                                                      (_) async =>
                                                                          {
                                                                            player.play('w.mp3'),
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
                                      textStyle:
                                          Theme.of(context).textTheme.headline1,
                                      //  fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color:
                                          Color.fromARGB(255, 231, 231, 231)),
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
                              padding: const EdgeInsets.only(top: 0, left: 5),
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
                                            "${widget.coinsshow ?? 0}",
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
                                      padding: const EdgeInsets.only(left: 2),
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
      body:
// color: Colors.black12,
// height: MediaQuery.of(context).size.height * 0.93,
          Column(children: [
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
// DelayedDisplay(
//   delay: Duration(milliseconds: 1400),
//   child: SpringButton(
//       SpringButtonType.OnlyScale,
//       Image.asset(
//         "assets/icon3.png",
//         height: 100,

//         // height: 250,
//       ),
//       onTapDown: (_) async => {
//             setState(() async {
//               // player.play('w.mp3');
//               ;

//               //  await Navigator.push(
//               //      context,
//               //      MaterialPageRoute(
//               //          builder: (context) =>
//               //              Periodictable()));
//             })
//           }),
// ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ColumnSuper(
                      outerDistance: -0,
                      children: [
// Container(
//   // alignment: Alignment(0.5, 1),
//   child: FacebookBannerAd(
//     placementId: "616076523573705_616096883571669",
//     bannerSize: BannerSize.STANDARD,
//     listener: (result, value) {
//       switch (result) {
//         case BannerAdResult.ERROR:
//           print("Error: $value");
//           break;
//         case BannerAdResult.LOADED:
//           print("Loaded: $value");
//           break;
//         case BannerAdResult.CLICKED:
//           print("Clicked: $value");
//           break;
//         case BannerAdResult.LOGGING_IMPRESSION:
//           print("Logging Impression: $value");
//           break;
//       }
//     },
//   ),
// ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 100),
// gridview
                          child: ColumnSuper(
                            outerDistance: -0,
                            children: [
                              GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: _aspectRatio,
// mainAxisSpacing: 3.0,
                                  ),
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: playlist.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Text(questions[index],
// "1000",
                                                  style: GoogleFonts.koHo(
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .headline1,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                          ],
                                        ),
                                        DelayedDisplay(
                                          delay: Duration(milliseconds: 400),
                                          child: InkWell(
                                            onTap: () {
                                              function(index);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25, right: 25),
                                              child: Container(
                                                height: 85,
// width: 380,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            136, 0, 0, 0),
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
                                                      fit: BoxFit.fill,
                                                    )),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15,
                                                          left: 10,
                                                          right: 10),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 30,
                                                        width: 230,
                                                        child: Center(
                                                          child: AutoSizeText(
                                                            playlist[index],
                                                            style: GoogleFonts
                                                                .koHo(
                                                              textStyle: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline1,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            maxLines: 1,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 5,
                                                                left: 20,
                                                                right: 20),
                                                        child: Container(
                                                          height: 15,
// width: 300,
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
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
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          25,
                                                                          117,
                                                                          2),
                                                                  spreadRadius:
                                                                      2,
                                                                  blurRadius: 5,
                                                                  offset:
                                                                      Offset(
                                                                    0,
                                                                    0,
                                                                  ),
                                                                )
                                                              ]),
                                                          child:
                                                              LiquidLinearProgressIndicator(
                                                            value: progresup[
                                                                    index] /
                                                                100,
//  progressnum[
//         index] /
//     100,
// Defaults to 0.5.
                                                            valueColor:
                                                                AlwaysStoppedAnimation(
                                                                    Colors
                                                                        .lightGreenAccent), // Defaults to the current Theme's accentColor.
                                                            backgroundColor: Colors
                                                                .black38, // Defaults to the current Theme's backgroundColor.
                                                            borderColor:
                                                                Colors.black38,
                                                            borderWidth: 2.0,
                                                            borderRadius: 12.0,
                                                            direction: Axis
                                                                .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                                                            center: Text(
                                                              "${progresup[index]} %  COMPLETED",
                                                              style: GoogleFonts.lato(
                                                                  textStyle: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline1,
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          175,
                                                                          169,
                                                                          169)),
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
                                        ),
                                      ],
                                    );
                                  }),
                            ],
                          ),
                        ),
// Padding(
//   padding: const EdgeInsets.only(bottom: 50),
//   child: Container(
//     height: 300,
//     child: FacebookNativeAd(
//       placementId: "616076523573705_616097106904980",
//       adType: NativeAdType.NATIVE_AD,
//       width: double.infinity,
//       // height: 200,
//       backgroundColor: Color.fromARGB(255, 51, 50, 50)
//           .withOpacity(0.8),
//       titleColor: Colors.white,
//       descriptionColor: Colors.white,
//       buttonColor: Color.fromARGB(255, 179, 179, 180),
//       buttonTitleColor: Colors.white,
//       buttonBorderColor: Colors.white,
//       keepAlive:
//           true, //set true if you do not want adview to refresh on widget rebuild
//       keepExpandedWhileLoading:
//           false, // set false if you want to collapse the native ad view when the ad is loading
//       expandAnimationDuraion:
//           0, //in milliseconds. Expands the adview with animation when ad is loaded
//       listener: (result, value) {
//         print("Native Ad: $result --> $value");
//       },
//     ),
//   ),
// ),
                      ],
                    ),
                  ),
// ListView.builder(
//     physics: NeverScrollableScrollPhysics(),
//     shrinkWrap: true,
//     itemCount: 4,
//     itemBuilder: (BuildContext context, int index) {
//       return InkWell(
//         onTap: () {
//           // reset();
//           setState(() {
//             count = 1;
//             widget.coinsshow = 0;

//             lock = lockall;
//             setcountervalue();
//           });
//         },
//         child: Column(
//           children: [
//             ListTile(
//               leading: Image.asset(lock[index]),
//               title: Center(
//                 child: Html(
//                   data:
//                       "<pre style = font-size:30;text-align:center;font-family:sans-serif;color:white;><i><b>${levelup[index]}</b></i></pre>",
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
                ],
              ),
            ),
          ),
        ),
      ]),
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
    );
  }
}

//  Padding(
//                     padding: const EdgeInsets.only(top: 0, left: 0),
//                     child: Center(
//                       child: Text(
//                           widget.levelscoree == null
//                               ? "1"
//                               : "${widget.levelscoree}",
//                           style: GoogleFonts.lato(
//                             textStyle: Theme.of(context).textTheme.headline1,
//                             fontSize: 40,
//                             fontWeight: FontWeight.w300,
//                             fontStyle: FontStyle.italic,
//                             color: Colors.black,
//                           )),
//                     ),
//                   ),

//  TextLiquidFill(
//   text: 'LETS PLAY',
//   waveColor: Colors.black,
//   boxBackgroundColor: Colors.amber,
//   textStyle: TextStyle(
//     fontSize: 40.0,
//     fontWeight: FontWeight.w500,
//   ),
//   boxHeight: 76.0,
//   boxWidth: 200,
// ),

// radius: 160.0,

// Padding(
//               padding: const EdgeInsets.only(top: 0),
//               child: SizedBox(
//                 width: 250.0,
//                 child: DefaultTextStyle(
//                   style: const TextStyle(
//                     fontSize: 30,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w400,
//                     shadows: [
//                       Shadow(
//                         blurRadius: 5.0,
//                         color: Colors.black,
//                         offset: Offset(5, 5),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 200),
//                     child: AnimatedTextKit(
//                       repeatForever: true,
//                       animatedTexts: [
//                         FlickerAnimatedText('INFINITY369 STUDIO'),
//                       ],
//                       onTap: () {
//                         print("Tap Event");
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//             ),
