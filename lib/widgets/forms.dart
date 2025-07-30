import 'package:flutter/material.dart';
class Forms_widget extends StatefulWidget{
  _Forms_widget createState()=>_Forms_widget();
}
class _Forms_widget extends State<Forms_widget>{
  @override
  final _formKey = GlobalKey<FormState>();

  String name = "";
  String email = "";
  String password="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Form Example"),
      centerTitle: true,
      backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                key: ValueKey("Name"),
                decoration: InputDecoration(labelText: "Name",
                hintText: "Enter name"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value!;
                },
              ),

              TextFormField(
                key: ValueKey("Email"),
                decoration: InputDecoration(labelText: "Email",
                hintText: "Enter Email"),
                validator: (value) {
                  if (value == null || !value.contains("@gmail.com")) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                onSaved: (value) {
                  email = value!;
                },
              ),
              TextFormField(
                key: ValueKey("Password"),
                decoration: InputDecoration(hintText: "Password",
                labelText: "Password"),
                validator: (value) {
                  if(value==null || value.length <= 6){
                    return "Minimum Password length is 6";
                  }else{
                    return null;
                  }
                },
                onSaved: (value) {
                  password=value!;
                },
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Show result
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text("Form Submitted"),
                        content: Text("Name: $name\nEmail: $email\nPassword: $password"),
                      ),
                    );
                  }
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}