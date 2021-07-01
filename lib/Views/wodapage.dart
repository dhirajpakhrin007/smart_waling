import 'package:flutter/material.dart';
import 'package:smart_waling/Models/wodapage_model.dart';
import 'package:smart_waling/Services/wodapage_service.dart';

class Wodapage extends StatefulWidget {
  @override
  _WodapageState createState() => _WodapageState();
}

class _WodapageState extends State<Wodapage> {
  // wodaPageService wodaData = wodaPageService();

  // Future<List<WodaModel>> getWodaApi() async {
  //   List<WodaModel> woda = wodaData.getWodaPage();
  //   return woda;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('नागरिक वोड़ापत्र'),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getWodaApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ExpansionTile(
                          backgroundColor: Colors.pink,
                          leading: Icon(Icons.arrow_forward),
                          title: snapshot.data[index]['title'],
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'आवश्यक कागज',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Text(
                                    snapshot.data[index]['description'],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "समय",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            snapshot.data[index]['title'],
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "सेवा दिने व्यक्ति",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            snapshot.data[index]['sewaPerson'],
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "सुल्क",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            snapshot.data[index]['cost'],
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                }
              }),
        ],
      ),
    );
  }
}
