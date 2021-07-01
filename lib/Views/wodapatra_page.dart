import 'package:flutter/material.dart';
import 'package:smart_waling/Models/wodapage_model.dart';
import 'package:smart_waling/Services/wodapatra_service.dart';
import 'package:smart_waling/constants/icons.dart';

class WodaPatra extends StatefulWidget {
  @override
  _WodaPatraState createState() => _WodaPatraState();
}

class _WodaPatraState extends State<WodaPatra> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.pink,
        title: Text('नागरिक वोड़ापत्र'),
      ),
      body: Column(
        children: [
          Container(
            height: height * 0.20,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          ),
          Expanded(
            child: Container(
                height: 400,
                child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    primary: false,
                    childAspectRatio: 1,
                    crossAxisCount: 3,
                    children: List.generate(wadaData.length, (index) {
                      return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Card(
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: Colors.white,
                              child: Container(
                                  height: 500,
                                  child: SingleChildScrollView(
                                    child: GestureDetector(
                                      onTap: () {
                                        if()
                                      },
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              wadaData[index].icons,
                                              // IconData(int.parse(
                                              //     'MyFlutterApp.${snapshot.data[index].icon}')),
                                              size: 30.0,
                                              color: Colors.green,
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(wadaData[index].title,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    height: 1.3,
                                                    color: Colors.black,
                                                    fontSize: 12)),
                                          ]),
                                    ),
                                  ))));
                    }))),
          ),
        ],
      ),
    );
  }
}
