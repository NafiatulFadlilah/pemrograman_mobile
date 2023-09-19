import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Konversi Suhu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Row(children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
              ),
            ),
          ]),
          Center(
            child: InputFieldWidget(),
          ),
          Center(
            child: DropdownWidget(),
          ),
          // Center(
          //   child: Result(),
          // ),
        ],
      ),
    ));
  }
}

class InputFieldWidget extends StatefulWidget {
  @override
  _InputFieldWidgetState createState() => _InputFieldWidgetState();
}

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            onChanged: (value) {
              setState(() {
                inputValue = value;
              });
            },
            decoration: InputDecoration(
              hintText: ' Masukkan teks di sini',
            ),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedValue = 'Kelvin'; // Nilai default

  // Daftar pilihan dropdown
  List<String> dropdownItems = [
    'Kelvin',
    'Reamur',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DropdownButton<String>(
            value: selectedValue,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 15),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 16.0),
          Text(
            'Pilihan yang Dipilih: $selectedValue',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}

class Result extends StatelessWidget {
  const Result({
    required Key key,
    required this.result,
  }) : super(key: key);
  final double result;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hasil",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            result.toStringAsFixed(1),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
