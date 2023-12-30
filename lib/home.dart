import 'package:cars_ads/ads.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> manufacturerList = ["Camry", "Nissan", "Toyota"];
  List<String> priceList = [
    "0 - 50,000 SA",
    "50,000 - 100,000 SA",
    "more than 100,000 SA"
  ];
  List<String> mileageList = [
    "less than 50km",
    "less than 100km",
    "less than 200km"
  ];

  String selectedManufacturer = '';
  String selectedPrice = '';
  String selectedMileage = '';

  bool checkDropdownFilled() {
    bool statu = false;
    setState(() {
      if (selectedManufacturer.isEmpty ||
          selectedMileage.isEmpty ||
          selectedPrice.isEmpty) {
        statu = false;
      } else {
        statu = true;
      }
    });
    print(statu);
    return statu;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car Specifications"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              margin: EdgeInsets.only(bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomDropdownButton(
                    itemHint: "Manufacturer",
                    itemList: manufacturerList,
                    onChnaged: (value) {
                      selectedManufacturer = value;
                      checkDropdownFilled();
                    },
                  ),
                  CustomDropdownButton(
                    itemHint: "Price",
                    itemList: priceList,
                    onChnaged: (value) {
                      selectedPrice = value;
                      checkDropdownFilled();
                    },
                  ),
                  CustomDropdownButton(
                    itemHint: "Mileage",
                    itemList: mileageList,
                    onChnaged: (value) {
                      selectedMileage = value;
                      checkDropdownFilled();
                    },
                  ),
                ],
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 7),
              color: Colors.blue,
              onPressed: checkDropdownFilled()
                  ? () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdsPage(
                              carManufacturer: selectedManufacturer,
                              carPrice: selectedPrice,
                              carMileage: selectedMileage)));
                      ;
                    }
                  : null,
              disabledColor: Colors.blue[200],
              child: Text(
                "Search",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomDropdownButton extends StatefulWidget {
  final String itemHint;
  final List<String> itemList;
  final Function(String) onChnaged;

  const CustomDropdownButton(
      {Key? key,
      required this.itemHint,
      required this.itemList,
      required this.onChnaged});
  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 200,
            padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: DropdownButton<String>(
              isExpanded: true,
              underline: SizedBox(),
              hint: Text(widget.itemHint),
              value: dropdownValue,
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue;
                  widget.onChnaged(newValue!);
                });
              },
              items: widget.itemList.map((valueItem) {
                return DropdownMenuItem<String>(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
