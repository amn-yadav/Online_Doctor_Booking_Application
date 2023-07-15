class Country {
  late String _CountryId;
  late String _CountryName;

  Country(this._CountryName);
  Country.widthId(this._CountryId, this._CountryName);

  String get CountryId => _CountryId;

  String get CountryName => _CountryName;

  set CountryName(String newCountryName) {
    _CountryName = newCountryName;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["CountryName"] = _CountryName;

    if (_CountryId != null) {
      map["_CountryId"] = _CountryId;
    }
    return map;
  }

  Country.fromObject(dynamic o) {
    this._CountryId = o["CountryId"];

    this._CountryName = o[CountryName];
  }
}
