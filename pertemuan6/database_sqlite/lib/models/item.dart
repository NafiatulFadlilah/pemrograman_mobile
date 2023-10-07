class Item {
  late int _price;
  late int? _id;
  late String _name;

  int? get id => _id;
  String get name => _name;
  int get price => _price;

  set name(String value) => _name = value;
  set price(int value) => _price = value;
  set id(int? value) => _id = value;

  // Konstruktor versi 1
  Item( this._name, this._price);

  // Konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _price = map['price'];
  }

  // Konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
     map['id'] = _id;
     map['name'] = _name;
     map['price'] = _price;
    return map;
  }
}