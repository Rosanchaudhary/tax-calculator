import "package:flutter/material.dart";
import 'package:vehicletax/tax_screen.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int stateValue = 100;
  String vehicleTypeValue = "--Select--";
  String vehicleClassValue = '--Select--';
  String vehicleCategoryValue = '--Select--';
  String texModeValue = "--Select--";

  var stateItems = [
    {"name": "--Select--", "price": 0},
    {"name": "State A", "price": 100},
    {"name": "State B", "price": 200},
    {"name": "State C", "price": 300},
    {"name": "State D", "price": 400},
  ];
  var vehicleTypeItems = [
    "--Select--",
    'Type A',
    'Type B',
    'Type C',
    'Type D',
    'Type E',
  ];
  var vehicleClassItems = [
    "--Select--",
    'Class A',
    'Class B',
    'Class C',
    'Class D',
    'Class E',
  ];
  var vehicleCategoryItems = [
    "--Select--",
    'Category A',
    'Category B',
    'Category C',
    'Category D',
    'Category E',
  ];
  var taxModeItems = [
    "--Select--",
    'Mode A',
    'Mode B',
    'Mode C',
    'Mode D',
    'Mode E',
  ];

  DateTime registrationDate = DateTime.now();

  Future<void> _selectRegDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: registrationDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != registrationDate) {
      setState(() {
        registrationDate = picked;
      });
    }
  }

  DateTime purchaseDate = DateTime.now();

  Future<void> _selectPurchaseDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: registrationDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != purchaseDate) {
      setState(() {
        purchaseDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculate"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Select State",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    fillColor: Colors.white),
                value: stateItems[0]['price'],
                icon: const Icon(Icons.keyboard_arrow_down),
                items: stateItems.map((items) {
                  return DropdownMenuItem(
                    value: items['price'],
                    child: Text(items["name"].toString()),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    stateValue = int.parse(newValue.toString());
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Vehicle Type",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Name",
                    fillColor: Colors.white),
                value: vehicleTypeValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: vehicleTypeItems.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    vehicleTypeValue = newValue!;
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Vehicle Class",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Name",
                    fillColor: Colors.white),
                value: vehicleClassValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: vehicleClassItems.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    vehicleClassValue = newValue!;
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Vehicle Category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Name",
                    fillColor: Colors.white),
                value: vehicleCategoryValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: vehicleCategoryItems.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    vehicleCategoryValue = newValue!;
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Registration Date",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  _selectRegDate(context);
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      "${registrationDate.toLocal()}".split(' ')[0],
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Purchase Date",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  _selectPurchaseDate(context);
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      "${purchaseDate.toLocal()}".split(' ')[0],
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Tax Mode",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Name",
                    fillColor: Colors.white),
                value: texModeValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: taxModeItems.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    texModeValue = newValue!;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TaxScreen()));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      "GET TAX DETAILS",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
