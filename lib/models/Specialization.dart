class Specialization{
late String _specializationId;
late String _specializationName ;
late String _countryId ;


 Specialization (this._specializationName,this._countryId);
 Specialization.WithID(this._specializationId,this._specializationName,this._countryId);


 String get specializationId=> _specializationId;
 String get specializationName=> _specializationName;
 String get countryId=> _countryId;

 set specializationName(String newspecializationName){
   _specializationName=newspecializationName;
 }

 set countryId(String newcountryId){
   _countryId=newcountryId;
 }

 Map<String,dynamic> toMap(){
   var map=Map<String,dynamic>();
   map["specializationName"]=_specializationName;
   map["countryId"]=_countryId;
   if(_specializationId != null){
     map["specializationId"]=_specializationId;
   }
   return map;
 }

 Specialization.formObject(dynamic o){
   this._specializationId=o["specializationId"];
   this._specializationName=o["specializationName"];
   this._countryId=o["countryId"];
 }





}