import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({Key? key}) : super(key: key);
  static String id = 'BookingDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            '#123456',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff242A37),
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.72,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x809e9e9e),
                    blurRadius: 15.0,
                    // spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Row 1
                  Container(
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      color: Color(0xffF7F7F7),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                              child: Text(
                                '\$25.00',
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
                                '2.2 km',
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
                    padding: EdgeInsets.fromLTRB(20.0, 20, 20, 5),
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
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                    child: Text(
                      '7958 Swifit Village',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      color: const Color(0xffEFEFF4),
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                    ),
                  ),

                  //Row 3
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20, 20, 5),
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
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                    child: Text(
                      '105 William St, Chicago, US',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xffEFEFF4),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                  ),

                  //Row 4
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20, 20, 5),
                    child: Text(
                      'NOTED',
                      style: TextStyle(
                        color: Color(0xffBEC2CE),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisc elit. Nullam ac vestibulum erat. Cras vulputate auctor lectus at consequat.',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      color: const Color(0xffEFEFF4),
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                    ),
                  ),

                  //Row 4
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20, 20, 5),
                    child: Text(
                      'TRIP FARE',
                      style: TextStyle(
                        color: Color(0xffBEC2CE),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Text(
                      '105 William St, Chicago, US',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Text(
                      '105 William St, Chicago, US',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                    child: Text(
                      '105 William St, Chicago, US',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      color: const Color(0xffEFEFF4),
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                    ),
                  ),

                  //Row 5 (Buttons)
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xff4CE5B1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 5),
                                    child: Image.asset(
                                      'images/call.png',
                                      scale: 0.6,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 17),
                                    child: Text(
                                      'Call',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xff4252FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 15, 0, 5),
                                    child: Image.asset(
                                      'images/message.png',
                                      scale: 0.6,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 17),
                                    child: Text(
                                      'Message',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xffBEC2CE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 5),
                                    child: Image.asset(
                                      'images/cancel.png',
                                      scale: 0.6,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 17),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Pick Up Button
            Positioned(
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  print('pickup');
                },
                child: Container(
                  color: const Color(0xffFFD428),
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text(
                      'GO TO PICK UP',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff242A37),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
