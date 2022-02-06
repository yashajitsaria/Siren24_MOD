
import 'package:flutter/material.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({Key? key}) : super(key: key);

  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height*0.05,
      left: (MediaQuery.of(context).size.width-MediaQuery.of(context).size.height*0.08)*0.5,
      child: GestureDetector(
        onTap: (){
          print('111');
          setState(() {
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
          });
        },
        child: Container(
          height: MediaQuery.of(context).size.height*0.08,
          width: MediaQuery.of(context).size.height*0.08,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0x809e9e9e),
                blurRadius: 15.0,
                spreadRadius: 5,
              ),
            ],
            color: Color(0xffFFD428),
            shape: BoxShape.circle,
            border: Border.all(
              width: 2.5,
              color: Colors.white,
            ),
          ),
          child: Image.asset('icons/plus1.png',
            color: Color(0xff242A37),
            scale: 0.8,),
        ),
      ),
    );
  }
}
