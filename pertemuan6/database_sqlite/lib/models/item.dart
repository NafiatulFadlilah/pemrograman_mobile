class Item {
  late String? _kodeBarang;
  late int? _stok;
  late int _price;
  late int? _id;
  late String _name;
 
  int? get id => _id;
  String get kodeBarang => kodeBarang;
  int get stok => stok;
  String get name => _name;
  int get price => _price;
  
  set kodeBarang(String value) => _kodeBarang = value;
  set stok(int value) => _stok = value;
  set name(String value) => _name = value;
  set price(int value) => _price = value;
  set id(int? value) => _id = value;

  // Konstruktor versi 1
  Item(this._kodeBarang, this._name, this._price, this._stok);

  // Konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _kodeBarang = map['kodeBarang'];
    _name = map['name'];
    _price = map['price'];
    _stok = map['stok'];
  }

  // Konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
     map['id'] = _id;
     map['kodeBarang'] = _kodeBarang;
     map['name'] = _name;
     map['price'] = _price;
     map['stok'] = _stok;
    return map;
  }
}