import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foudedieu/views/ui/home_page.dart';
import 'package:foudedieu/views/ui/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final double _minimumPadding = 5.0;
  //For the dialog
  TextEditingController codeController = TextEditingController();
  bool _validate = false;
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Saisissez le code"),
            content: TextField(
              controller: codeController,
              keyboardType: TextInputType.number,
              maxLength: 4,
              decoration: InputDecoration(
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text(
                  "Envoyer",
                  style: (TextStyle(color: Colors.amber)),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()));
                  //Navigator.of(context).pop(codeController.text.toString());
                  setState(() {
                    codeController.text.isEmpty
                        ? _validate = true
                        : _validate = false;
                  });
                },
              )
            ],
          );
        });
  }

  //For the form
  var selectedCountry;
  List<String> _countryList = <String>['Togo', 'Bénin', 'Gabon', 'Cameroun'];
  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Login'),
        elevation: 0,
        backgroundColor: Colors.white,
//        leading: IconButton(
//          icon: Icon(Icons.arrow_back_ios),
//          onPressed: () {
//            Navigator.of(context).pop();
//          },
//        ),
      ),
      body: Form(
        key: _formKeyValue,
        child: Padding(
          padding: EdgeInsets.all(_minimumPadding * 2),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Vérification par code",
                    style: TextStyle(color: Colors.amber, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Saisissez votre numéro de téléphone et vous recevrez"
                    " le code de vérification",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Choisissez votre pays",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                    ),
                    child: DropdownButton(
                      items: _countryList
                          .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: value,
                              ))
                          .toList(),
                      onChanged: (selectedCountryType) {
                        setState(() {
                          selectedCountry = selectedCountryType;
                        });
                      },
                      value: selectedCountry,
                      hint: Text("Pays"),
                      isExpanded: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: _minimumPadding,
                  bottom: _minimumPadding,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter the number';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Numéro de téléphone',
                    labelStyle: TextStyle(color: Colors.black87, fontSize: 20),
                    hintText: 'Ex: 22222222',
                    hintStyle: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Envoyer le code',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                      ),
                    ),
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(10),
                    onPressed: () {
                      createAlertDialog(context);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    elevation: 5,
                    child: Text(
                      'Se connecter',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.amber,
                    padding: const EdgeInsets.all(15),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Vous acceptez donc notre politique de confidentialité",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
