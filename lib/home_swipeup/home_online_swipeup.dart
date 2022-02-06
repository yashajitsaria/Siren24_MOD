import 'package:siren24/history/listviewforhistory.dart';
import 'package:flutter/material.dart';

class HomeSwipeup extends StatelessWidget {
  const HomeSwipeup({Key? key}) : super(key: key);
  static String id = 'HomeSwipeup' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Online',
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
              height: MediaQuery.of(context).size.height * 0.06,
              color: Color(0xffFF8900),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,10),
              child: Container(
                height: MediaQuery.of(context).size.height*(0.8),
                  child: ListViewHistory(),),
            ),
          ],
        ),
      ),
    );
  }
}
