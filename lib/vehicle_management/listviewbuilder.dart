import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siren24/global/globalvariables.dart';

class ListViewvm extends StatefulWidget {
  const ListViewvm({Key? key}) : super(key: key);

  @override
  _ListViewvmState createState() => _ListViewvmState();
}


class _ListViewvmState extends State<ListViewvm> {

  List<int> zeros = List.filled(ambulance_details.length, 0) ;
  int number = 0 ;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ambulance_details.length,
      itemBuilder: (BuildContext context, int index)
      {
        return GestureDetector(

          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x809e9e9e),
                      blurRadius: 15.0,
                    ),
                  ]),
              height: 110,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [

                    //Icon
                    CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Color(0xffFFD428),
                      child: Image.asset('icons/blacklist.png',
                      color: Colors.white,
                      scale: 0.75,),
                    ),

                    //Name and Number Plates
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,5,0,5),
                              child: Text(
                                ambulance_details[index]['model'],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color(0xff242E42),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,5,0,5),
                              child: Text(
                                ambulance_details[index]['car_no'],
                                style: const TextStyle(
                                  color: Color(0xffC8C7CC),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Check Box
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          if (zeros[index] == 0 )
                            {
                              zeros[index] = 1 ;
                              zeros[number] = 0 ;
                              number = index ;
                            }
                          else
                            {
                              zeros[index] = 0 ;
                            }
                        });
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffFF8900),
                            width: 2.5,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: zeros[index] == 1 ? Image.asset('icons/tick.png',
                        fit: BoxFit.fill,) : null ,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
