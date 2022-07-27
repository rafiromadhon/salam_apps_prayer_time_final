// import 'dart:html';

import 'package:flutter/material.dart';
// import './models/prayer_time.dart';
// import './models/constant.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Jadwal Sholat',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List dummy = [
    "Fajr",
    "Terbit",
    "Duhur",
    "Ashar",
    "Terbenam",
    "Maghrib",
    "Isha",
  ];

  List dummyTimes = [
    "04:46",
    "06:03",
    "12:03",
    "15:24",
    "17:50",
    "17:56",
    "19:10",
  ];

  // List _prayerTimes = [];
  // List _prayerNames = [];

  // @override
  // void initState() {
  //   super.initState();
  //   getPrayerTimes();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                width: 300,
                child: Image.asset(
                    'assets/img/—Pngtree—as salamu alaikum salam muslim_6555523.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ListView.builder(
                      itemCount: dummy.length,
                      itemBuilder: (context, position) {
                        return Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 120,
                                child: Text(
                                  dummy[position],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Colors.teal[50]),
                                child: Text(
                                  dummyTimes[position],
                                  style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 20,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        );
                      })),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Kab. Tangerang",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 14),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  // getPrayerTimes() {
  //   PrayerTime prayers = new PrayerTime();

  //   prayers.setTimeFormat(prayers.getTime12());
  //   prayers.setCalcMethod(prayers.getMWL());
  //   prayers.setAsrJuristic(prayers.getShafii());
  //   prayers.setAdjustHighLats(prayers.getAdjustHighLats());

  //   // List offsets = [-6, 0, 3, 2, 0, 3, 6];

  //   var currentTime = DateTime.now();

  //   setState(() {
  //     _prayerTimes = prayers.getPrayerTimes(
  //         currentTime, Constants.lat, Constants.long, Constants.timeZone);
  //     _prayerNames = prayers.getTimeNames();
  //   });
  // }
}
