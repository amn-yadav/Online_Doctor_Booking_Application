class Login {
  late String _Email;
  late String _Password;
  Login(this._Email, this._Password);

  String get Email => _Email;
  String get Password => _Password;

  set Email(String newEmail) {
    _Email = newEmail;
  }

  set Password(String newPassword) {
    _Password = newPassword;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["Email"] = _Email;
    map[" Password"] = _Password;

    if (_Email != null && _Password != null) {
      map["Email"] = _Email;
      map[" Password"] = _Password;
    }
    return map;
  }

  Login.fromObject(dynamic o) { 
    this._Email = o["Email"];
    this._Password = o["Password"];
  }
}
