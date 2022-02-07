
import 'package:siren24/global/globalvariables.dart';
import 'package:siren24/history/listviewforhistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);
  static String id = 'History' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'History',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff242A37),
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xffF7F8FA),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 10, 0),
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 60) * 0.5,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffFFD428),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x809e9e9e),
                          blurRadius: 15.0,
                          // spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 20, 30),
                          child: Image.asset(
                            'images/icon.png',
                            scale: 0.7,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,25,0,0),
                              child: Text(
                                'Total Jobs',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0x80242A37),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,2.5,0,5),
                              child: Text(
                                history_data.length.toString(),
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff242A37),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 20, 0),
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 60) * 0.5,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffFF8900),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x809e9e9e),
                          blurRadius: 15.0,
                          // spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 15, 20),
                          child: Image.asset(
                            'images/money-1.png',
                            scale: 0.5,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,25,0,0),
                              child: Text(
                                'Earned',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0x80242A37),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,2.5,0,5),
                              child: Text(
                                '\$325.00 ',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff242A37),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,10),
              child: Container(
                  height: MediaQuery.of(context).size.height*(0.6),
                  child: ListViewHistory(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
