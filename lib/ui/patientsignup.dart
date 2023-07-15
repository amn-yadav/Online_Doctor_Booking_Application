import 'package:Tic_App/models/api.services.dart';
import 'package:flutter/material.dart';
import 'package:Tic_App/models/Patient.dart';

class patientsignup extends StatefulWidget {
  // const patientsignup({Key? key}) : super(key: key);
 // final  patient = new Patient('','','','') ;
  patientsignup();
 // patientsignup(patient);

  @override
  State<StatefulWidget> createState() => _patientSignupState();
  //State<StatefulWidget> createState() => _patientSignupState(patient);
 // State<patientsignup> createState() => _patientSignupState(patient);
}

class _patientSignupState extends State<patientsignup> {
  bool _isHidden = true;
    final  patient = new Patient('','','','') ;
  _patientSignupState();
 // _patientSignupState(patient);
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  var phonenoController = TextEditingController();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    userNameController.text = patient.UserName;
    passwordController.text = patient.Password;
    phonenoController.text = patient.PhoneNo;
    emailController.text = patient.EmailId;

    return Scaffold(
      body: Material(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create Account",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Enter details to get started",
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: userNameController,
                      onChanged:(value)=>updateUsername(),

                      decoration: InputDecoration(
                        hintText: "Username",
                        fillColor:
                            Theme.of(context).primaryColor.withOpacity(0.1),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 47, 14, 233),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: emailController,
                      onChanged: (value)=>updateEmail(),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Email Id",
                          fillColor:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color.fromARGB(255, 47, 14, 233),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: phonenoController,
                      onChanged: (value)=>updatePhoneno(),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Enter Phone Number",
                          fillColor:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.phone_android_outlined,
                            color: Color.fromARGB(255, 47, 14, 233),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: passwordController,
                      onChanged:(value)=>updatePassword(),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        hintText: "Password",
                        fillColor:
                            Theme.of(context).primaryColor.withOpacity(0.1),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 47, 14, 233),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        suffix: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        fillColor:
                            Theme.of(context).primaryColor.withOpacity(0.1),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 47, 14, 233),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        savePatient();
                        //Navigator.pushNamed(context, '/');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(vertical: 16)),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login1');
                            },
                            child: Text("Login"))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void savePatient() async {
    var saveResponse = await APIServices.SavePatient(patient);
    saveResponse==true ? Navigator.pop(context,true):null;

  }

  void updateUsername() {
      patient.UserName=userNameController.text;
  }
  void updateEmail(){
    patient.EmailId  =emailController.text;
  }
  void updatePhoneno(){
    patient.PhoneNo  =phonenoController.text;
  }
  void updatePassword(){
    patient.Password = passwordController.text;
  }
}
