import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            // MENAMPILKAN APP BAR
            'MyTreasure',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 20.0), // SPASI
                Row(
                  children: [
                    Expanded(
                      // SISI KIRI
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'SONGS',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      // SISI KANAN
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'ALBUMS',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Stack(
                  children: <Widget>[
                    Container(
                      // CONTAINER GAMBAR + LATARNYA
                      height: 200,
                      alignment: Alignment.topCenter,
                      color: Colors.blueGrey,
                      // padding: EdgeInsets.only(left: 1, right: 1),
                      child: Image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoxSIQJmKeUMCE9hWeW0s3JX77lvPkWkl_kSZ0SOCGjxlkZctkiTVPi0cbejEtx-qi6yg&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 1, right: 1, top: 1),
                      decoration: BoxDecoration(
                        border: Border.all(
                          // GARIS / BORDER
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                      height: 200,
                      width: 502,
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'TREASURE - 직진 (JIKJIN) M/V',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        // CONTAINER OFFICIAL
                        height: 50,
                        alignment: Alignment.centerLeft,
                        color: Colors.black,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'TREASURE (트레저)',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  padding:
                      EdgeInsets.all(1.0), // Padding untuk jarak dari border
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Warna border
                      width: 2.0, // Lebar border
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 200.0,
                        height: 200.0,
                        child: Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP3g2jlXD7OkSf51DgR_6PXscrBy2kGjUoNQW5NroY9aOUrK33aZlOeaJX7I3jBDmA1-A&usqp=CAU'),
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        child: Text('B.O.M.B - TREASURE',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                        // CONTAINER RELEASED
                        height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Warna border
                            width: 1.0, // Lebar border
                          ),
                        ),
                        child: Text(
                          'Provided to YouTube by YG Entertainment \n28 July 2023',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  padding:
                      EdgeInsets.all(1.0), // Padding untuk jarak dari border
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Warna border
                      width: 2.0, // Lebar border
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 200.0,
                        height: 200.0,
                        child: Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDlh97zXEDVEONXFBziRbB3W52nkMEm3RQzkmoIWkgkdQ7Ujq1N868OUU4HQfkjVxGd_8&usqp=CAU'),
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 200.0,
                        alignment: Alignment.center,
                        child: Text('HERE I STAND - \nTREASURE',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                        // CONTAINER RELEASED
                        height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Warna border
                            width: 1.0, // Lebar border
                          ),
                        ),
                        child: Text(
                          'Provided to YouTube by YG Entertainment \n29 March 2023',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
