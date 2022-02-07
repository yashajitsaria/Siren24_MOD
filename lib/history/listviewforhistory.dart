import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siren24/bookingdetails/bookingdetails.dart';
import 'package:siren24/global/globalvariables.dart';

class ListViewHistory extends StatefulWidget {
  const ListViewHistory({Key? key}) : super(key: key);

  @override
  _ListViewHistoryState createState() => _ListViewHistoryState();
}

class _ListViewHistoryState extends State<ListViewHistory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.60,
        color: const Color(0xffF7F8FA),
        child: ListView.builder(
          itemCount: history_data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.pushReplacementNamed(context, BookingDetails.id);
                  });
                },
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x809e9e9e),
                        blurRadius: 15.0,
                        // spreadRadius: 5,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      //Row 1
                      Container(
                        height: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                          color: Color(0xffF7F7F7),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                                  child: Text(
                                    'Steve Bowen',
                                    style: TextStyle(
                                      color: Color(0xff242E42),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Text(
                                    '₹'+ history_data[index]["order_amount"].toString(),
                                    style: TextStyle(
                                      color: Color(0xff242E42),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                                  child: Text(
                                    history_data[index]["order_distance"].toString()+' km',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xffBEC2CE),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: const Color(0xffEFEFF4),
                        height: 1,
                      ),

                      //Row 2
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20.0,20,20,5),
                        child: Text(
                          'PICK UP',
                          style: TextStyle(
                            color: Color(0xffBEC2CE),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                        child: Text(
                          '7958 Swifit Village',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          color: Color(0xffEFEFF4),
                          width: MediaQuery.of(context).size.width*0.85,
                          height: 1,
                        ),
                      ),

                      //Row 3
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20.0,20,20,5),
                        child: Text(
                          'DROP OFF',
                          style: TextStyle(
                            color: Color(0xffBEC2CE),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                        child: Text(
                          '105 William St, Chicago, US',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
