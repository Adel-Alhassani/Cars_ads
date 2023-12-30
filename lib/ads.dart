import 'package:flutter/material.dart';

class AdsPage extends StatefulWidget {
  final String carManufacturer;
  final String carPrice;
  final String carMileage;
  const AdsPage({super.key, required this.carManufacturer, required this.carPrice, required this.carMileage});

  @override
  State<AdsPage> createState() => _AdsPageState();
}

class _AdsPageState extends State<AdsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Car Ads"),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                  height: 300,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView(children: [
                    Text(
                      "2022 Toyota Camry XLE - 20,000 km - SAR 150,000",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "This Camry is a slightly higher trim level than the LE, and it has even lower mileage. It is also from a reputable dealer in Jeddah.",
                    ),
                    SizedBox(height: 10),
                    Align(
                      child: Container(
                          height: 220,
                          width: 220,
                          // color: Colors.black,
                          child: Image.asset("imgs/car1.jpg")),
                    ),
                    Text(
                      "2022 Toyota Camry XLE - 20,000 km - SAR 150,000",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "This Camry is a slightly higher trim level than the LE, and it has even lower mileage. It is also from a reputable dealer in Jeddah.",
                    ),
                    SizedBox(height: 10),
                    Align(
                      child: Container(
                          height: 220,
                          width: 220,
                          // color: Colors.black,
                          child: Image.asset("imgs/car1.jpg")),
                    ),
                    Text(
                      "2022 Toyota Camry XLE - 20,000 km - SAR 150,000",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "This Camry is a slightly higher trim level than the LE, and it has even lower mileage. It is also from a reputable dealer in Jeddah.",
                    ),
                    SizedBox(height: 10),
                    Align(
                      child: Container(
                          height: 220,
                          width: 220,
                          // color: Colors.black,
                          child: Image.asset("imgs/car1.jpg")),
                    ),
                  ])),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.white,
                onPressed: () {},
                child: Text(
                  "More Ads",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
