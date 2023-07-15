class Area {
  late int _Pincode;
  late String _PoliceStation;
  late String _AreaName;
  late String _AreaId;
  Area(this._AreaName, this._Pincode, this._PoliceStation);

  Area.WithId(this._AreaId, this._AreaName, this._Pincode, this._PoliceStation);

  int get Pincode => _Pincode;
  String get AreaID => _AreaId;
  String get AreaName => _AreaName;
  String get PoliceStation => _PoliceStation;

  set Pincode(int newPincode) {
    _Pincode = newPincode;
  }

  set AreaName(String newAreaName) {
    _AreaName = newAreaName;
  }

  set PoliceStation(String newPoliceStation) {
    _PoliceStation = newPoliceStation;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["AreaName"] = _AreaName;
    map[" PoliceStation"] = _PoliceStation;
    map["Pincode"] = _Pincode;
    if (_AreaId != null) {
      map["AreaId"] = _AreaId;
    }
    return map;
  }

  Area.fromObject(dynamic o) {
    this._AreaId = o["AreaId"];
    this._AreaName = o["AreaName"];
    this._PoliceStation = o["PoliceStation"];
    this._Pincode = o["Pincode"];
  }
}
