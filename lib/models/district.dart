class District {
  late String _DistrictId;
  late String _DistrictName;
  late String _StateId;

  District(this._DistrictName);
  District.widthId(this._DistrictId, this._DistrictName, this._StateId);

  String get DistrictId => _DistrictId;
  String get DistrictName => _DistrictName;
  String get StateId => _StateId;

  set DistrictId(String newDistrictId) {
    DistrictId = newDistrictId;
  }

  set DistrictName(String newDistrictName) {
    _DistrictName = newDistrictName;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["DistrictName"] = DistrictName;
    if (DistrictId != null) {
      map["DistrictId"] = DistrictId;
    }
    return map;
  }

  District.fromObject(dynamic o) {
    this._DistrictId = o["DistrictId"];
    this._DistrictName = o["DistrictName"];
    this._StateId = o["StateId"];
  }
}
