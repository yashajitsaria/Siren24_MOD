// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';

class AddVehicleButton extends StatefulWidget {
  const AddVehicleButton({Key? key}) : super(key: key);

  @override
  _AddVehicleButtonState createState() => _AddVehicleButtonState();
}

class _AddVehicleButtonState extends State<AddVehicleButton> {
  String? ambulanceBrand;
  List<String> brand = [
    'Maruti Suzuki',
    'Tata',
    'Mahindra',
    'Toyota',
  ];

  String? ambulanceType;
  List<String> type = [
    'Individual Ambulance',
    'Mobile ICU Ambulance',
    'Basic Life Support Ambulance',
    'Medical and Nursing Care Vehicle',
    'MVA Logistics Unit',
    'Neonatal Incubator',
  ];

  String? ambulanceModel;
  List<String> model = [
    'Suzuki Omni',
    'Suzuki Eeco',
    'Winger',
    'Bolero',
    'Supro',
    'Hector',
    'Innova',
    'Camry',
  ];

  List<dynamic> addOns = [
    {
      "display": "Paramedic",
      "value": "Paramedic",
    },
    {
      "display": "Stretcher",
      "value": "Stretcher",
    },
    {
      "display": "Oxygen",
      "value": "Oxygen",
    },
    {
      "display": "Ventilator",
      "value": "Ventilator",
    },
    {
      "display": "Patient Monitoring",
      "value": "Patient Monitoring",
    },
    {
      "display": "Equipment and Defibrillator",
      "value": "Equipment and Defibrillator",
    },
  ];

  final List<String> _selectedItems = [];
  List? _myActivities;
  late String _myActivitiesResult;

  TextEditingController lisencePlate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Scaffold(
        drawer: MenuBar(),
        backgroundColor: Color(0xFFF7F8FA),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xFFFFD428)),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Add a new Ambulance',
            style: TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 21.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xFFBEC2CE),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
              child: Text(
                'AMBULANCE BRAND',
                style: TextStyle(
                  color: Color(0xFFBEC2CE),
                  fontSize: 18.sp,
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: DropdownButton<String>(
                  hint: Text('Select your Ambulance Brand'),
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(10),
                  underline: SizedBox(),
                  value: ambulanceBrand,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFFBEC2CE),
                  ),
                  iconSize: 24,
                  elevation: 16,
                  onChanged: (newValue) {
                    setState(() {
                      ambulanceBrand = newValue;
                    });
                  },
                  items: brand.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
              child: Text(
                'MODEL',
                style: TextStyle(
                  color: Color(0xFFBEC2CE),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SF UI Display',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: DropdownButton<String>(
                  hint: Text('Select your Ambulance Model'),
                  isExpanded: true,
                  underline: SizedBox(),
                  value: ambulanceModel,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFFBEC2CE),
                  ),
                  iconSize: 24,
                  elevation: 16,
                  onChanged: (newValue) {
                    setState(() {
                      ambulanceModel = newValue;
                    });
                  },
                  items: model.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
              child: Text(
                'TYPE',
                style: TextStyle(
                  color: Color(0xFFBEC2CE),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SF UI Display',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: DropdownButton<String>(
                  hint: Text('Select your Ambulance Type'),
                  isExpanded: true,
                  underline: SizedBox(),
                  value: ambulanceType,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFFBEC2CE),
                  ),
                  iconSize: 24,
                  elevation: 16,
                  onChanged: (newValue) {
                    setState(() {
                      ambulanceType = newValue;
                    });
                  },
                  items: type.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
              child: Text(
                'LICENSE PALTE',
                style: TextStyle(
                  color: Color(0xFFBEC2CE),
                  fontSize: 18.sp,
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 45.sp,
                child: TextFormField(
                  controller: lisencePlate,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your Lisence Number',
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: MultiSelectFormField(
                fillColor: Colors.white,
                border: InputBorder.none,
                chipBackGroundColor: Color(0xFFFFD428),
                checkBoxActiveColor: Color(0xFFFFD428),
                checkBoxCheckColor: Colors.black,
                dialogShapeBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                title: Text(
                  'ADD ONs',
                  style: TextStyle(
                    color: Color(0xFFBEC2CE),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF UI Display',
                  ),
                ),
                dataSource: [
                  {
                    "display": "Paramedic",
                    "value": "Paramedic",
                  },
                  {
                    "display": "Stretcher",
                    "value": "Stretcher",
                  },
                  {
                    "display": "Oxygen",
                    "value": "Oxygen",
                  },
                  {
                    "display": "Ventilator",
                    "value": "Ventilator",
                  },
                  {
                    "display": "Patient Monitoring",
                    "value": "Patient Monitoring",
                  },
                  {
                    "display": "Equipment and Defibrillator",
                    "value": "Equipment and Defibrillator",
                  },
                ],
                textField: 'display',
                valueField: 'value',
                okButtonLabel: 'ADD',
                cancelButtonLabel: 'CANCEL',
                hintWidget: Text('Select ADD ONs'),
                initialValue: _myActivities,
                onSaved: (value) {
                  if (value == null) return;
                  setState(() {
                    _myActivities = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 36,
                right: 36,
                top: 36,
                bottom: 20,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 54.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD428),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Add Ambulance',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
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