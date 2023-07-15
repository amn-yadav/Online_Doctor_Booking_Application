class State{
  late String _stateId;
  late String _stateName ;
  late String _countryId ;


  State (this._stateName,this._countryId);
  State.WithID(this._stateId,this._stateName,this._countryId);


  String get stateId=> _stateId;
  String get stateName=> _stateName;
  String get countryId=> _countryId;

  set stateName(String newstateName){
    _stateName=newstateName;
  }

  set countryId(String newcountryId){
    _countryId=newcountryId;
  }

  Map<String,dynamic> toMap(){
    var map=Map<String,dynamic>();
    map["stateName"]=_stateName;
    map["countryId"]=_countryId;
    if(_stateId != null){
      map["stateId"]=_stateId;
    }
    return map;
  }

  State.formObject(dynamic o){
    this._stateId=o["stateId"];
    this._stateName=o["stateName"];
    this._countryId=o["countryId"];
  }





}