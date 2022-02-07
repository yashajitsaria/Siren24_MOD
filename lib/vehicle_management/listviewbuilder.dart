import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewvm extends StatefulWidget {
  const ListViewvm({Key? key}) : super(key: key);

  @override
  _ListViewvmState createState() => _ListViewvmState();
}


class _ListViewvmState extends State<ListViewvm> {


  List<String> nameofvehicle = ['Mazda','Mitsubishi Outlander','Mitsubishi Outlander','Mazda','Mitsubishi Outlander','Mazda','Mitsubishi Outlander','Mazda','Mitsubishi Outlander','Mazda','Mitsubishi Outlander'] ;
  List<String> liscenseplatenumber = ['43A 235.70','43A 125.84','43A 235.70','43A 125.84','43A 235.70','43A 125.84','43A 125.84','43A 125.84','43A 125.84','43A 125.84','43A 125.84'] ;
  List<int> counter = [0,0,0,0,0,0,0,0,0,0,0];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: nameofvehicle.length,
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
                                nameofvehicle[index],
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
                                liscenseplatenumber[index],
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
                          if (counter[index] == 0 )
                            {
                              counter[index] = 1 ;
                            }
                          else
                            {
                              counter[index] = 0 ;
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
                        child: counter[index] == 1 ? Image.asset('icons/tick.png',
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
