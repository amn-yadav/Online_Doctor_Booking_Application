class City {
  late String _CityId;
  late String _CityName;
  late String _DistrictId;
  City(this._CityName, this._DistrictId);

  City.WithId(this._CityId, this._CityName, this._DistrictId);

  String get CityId => _CityId;
  String get CityName => _CityName;
  String get DistrictId => _DistrictId;

  set CityName(String newCityName) {
    _CityName = newCityName;
  }

  set DistrictId(String newDistrictId) {
    _DistrictId = newDistrictId;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["CityName"] = _CityName;
    map[" DistrictId"] = _DistrictId;

    if (_CityId != null) {
      map["CityId"] = _CityId;
    }
    return map;
  }

  City.fromObject(dynamic o) {
    this._CityId = o["CityId"];
    this._CityName = o["CityName"];
    this._DistrictId = o["DistrictId"];
  }
}
