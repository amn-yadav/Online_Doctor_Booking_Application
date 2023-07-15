class Rating {
  late String _DoctorName;
  late String _Specification;
  late String _Degree;
  late String _Experience;
  late String _Remarks;

  Rating(this._DoctorName, this._Specification, this._Degree, this._Experience);

  String get DoctorName => _DoctorName;
  String get Specification => _Specification;
  String get Degree => _Degree;
  String get Experience => _Experience;
  String get Remarks => _Remarks;

  set DoctorName(String newDoctorName) {
    _DoctorName = newDoctorName;
  }

  set Specification(String newSpecification) {
    _Specification = newSpecification;
  }

  set Degree(String newDegree) {
    _Degree = newDegree;
  }

  set Experience(String newExperience) {
    _Experience = newExperience;
  }

  set Remarks(String newRemarks) {
    _Remarks = newRemarks;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["DoctorName"] = DoctorName;
    map["Specification"] = Specification;
    map["Degree"] = Degree;
    map["Experience"] = Degree;
    map["Remarks"] = Remarks;
    if ((DoctorName != null) &&
        (Specification != null) &&
        (Degree != null) &&
        (Experience != null) &&
        (Remarks != null)) {
      map["DoctorName"] = DoctorName;
    }
    return map;
  }

  Rating.fromObject(dynamic o) {
    this._DoctorName = o["DoctorName"];
    this._Specification = o["_Specification"];
    this.Degree = o["Degree"];
    this.Experience = o["Experience"];
    this.Remarks = o["Remarks"];
  }
}
