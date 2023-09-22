import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Konverter Suhu', // Recent Apps
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: false,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Konverter Suhu', // Navbar Apps
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            children: [
              Row(children: const [
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                  ),
                ),
              ]),
              const Center(
                child: ContentWidget(),
              ),
            ],
          ),
        ));
  }
}

class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  String inputValue = '';
  String selectedValue = 'Kelvin'; // Nilai default
  double result = 0;
  String convertedTemperature = '0';

  // Daftar Suhu (Dropdown)
  List<String> dropdownItems = [
    'Kelvin',
    'Reamur',
    'Fahrenheit',
  ];

  // Daftar Riwayat
  final List<String> conversionHistory = [];

  void convertTemperature(inputValue, selectedValue) {
    // method untuk menghitung suhu
    if (inputValue != null && selectedValue.isNotEmpty) {
      final double? temperature = double.tryParse(inputValue);
      final String value = selectedValue;

      if (value == "Kelvin") {
        result = 273 + temperature!;
      } else if (value == "Reamur") {
        result = (4 / 5) * temperature!;
      } else if (value == "Fahrenheit") {
        result = (9 / 5) * temperature! + 32;
      }

      setState(() {
        convertedTemperature = "$result";
        // untuk menambahkan kalkulasi ke list
        conversionHistory.add('$value: $result');
      });
    }
  }

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
            decoration: const InputDecoration(
              hintText: ' Masukkan teks di sini',
            ),
          ),
          const SizedBox(height: 16.0),
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
                  style: const TextStyle(fontSize: 15),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 16.0),
          const Text(
            "Hasil",
            style: TextStyle(fontSize: 20),
          ),
          Text(convertedTemperature),
          const SizedBox(height: 30.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45)),
            onPressed: () => convertTemperature(inputValue, selectedValue),
            child: const Text('Konversi Suhu'),
          ),
          const SizedBox(height: 16.0),
          const Text(
            "Riwayat Konversi",
            style: TextStyle(fontSize: 20),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 100,
                child: ListView.builder(
                  // untuk menampilkan daftar riwayat
                  itemCount: conversionHistory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(conversionHistory[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
