class Patient {
   int _Id = 0;
   String _UserName="";
   String _EmailId="";
   String _PhoneNo="";
   String _Password="";


  Patient(this._UserName, this._EmailId, this._PhoneNo, this._Password);

  Patient.WithId( this._Id,this._UserName, this._EmailId, this._PhoneNo, this._Password);


  int get Id => _Id;
  String get UserName => _UserName;
  String get EmailId => _EmailId;
  String get PhoneNo => _PhoneNo;
  String get Password => _Password;


  set Id(int newId) {
    _Id = newId;
  }

  set UserName(String newUserName) {
    _UserName = newUserName;
  }

  set EmailId(String newEmailId) {
    _EmailId = newEmailId;
  }

  set PhoneNo(String newPhoneNo) {
    _PhoneNo = newPhoneNo;
  }

  set Password(String newPassword) {
    _Password = newPassword;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["UserName"] = _UserName;
    map["EmailId"] = _EmailId;
    map["PhoneNo"] = _PhoneNo;
    map["Password"] = _Password;
    if(_Id != null){
      map["Id"]=_Id;
    }
    return map;
  }

  Patient.fromObject(dynamic o) {

    this._Id = o["Id"];
    this._UserName = o["UserName"];
    this._EmailId = o["EmailId"];
    this._PhoneNo = o["PhoneNo"];
    this._Password = o["Password"];
  }
}
