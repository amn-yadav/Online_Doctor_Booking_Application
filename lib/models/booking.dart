class Booking {
  String _area;
  String _specialization;
  String _drname;
  String _date;

  Booking(this._area, this._specialization, this._date, this._drname);

  String get area => _area;
  String get specialization => _specialization;
  String get drname => _drname;
  String get date => _date;

  set area(String newarea) {
    final _area = newarea;
  }

  set specialization(String newspecialization) {
    final _specialization = newspecialization;
  }

  set drname(String newdrname) {
    final _drname = newdrname;
  }

  set date(String newdate) {
    final _date = newdate;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (_area != null &&
        _specialization != null &&
        _drname != null &&
        _date != null) {
      map["area"] = _area;
      map["specialization"] = _specialization;
      map["drname"] = _drname;
      map["date"] = _date;
    }
    return map;
  }

  Booking.formObject(
      dynamic o, this._area, this._specialization, this._drname, this._date) {
    this._area = o["area"];
    this._specialization = o["specialization"];
    this._drname = o["drname"];
    this._date = o["date"];
  }
}
