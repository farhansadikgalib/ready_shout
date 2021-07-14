import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ready_shout/components/form_error.dart';
import '../../../constants.dart';


class Profileform extends StatefulWidget {
  @override
  _SettingformState createState() => _SettingformState();
}

class _SettingformState extends State<Profileform> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(width: 343, height: 48.05, child: buildNameFormField()),
          SizedBox(height: 10),
          Container(width: 343, height: 48.05,child: buildCompanyRepresentativeField()),
          SizedBox(height: 10),
          Container(width: 343, height: 48.05,child: buildEmailFormField()),
          SizedBox(height: 10),
          Container(width: 343, height: 48.05,child: buildNumberFormField()),
          SizedBox(height: 10),
          Container(width: 343, height: 48.05,child: buildLogocompanyField()),
          SizedBox(height: 5),
          FormError(errors: errors),
          SizedBox(height: 8),
          SizedBox(
            height: 0,
            width: 270.0,
            child: Divider(
              color: Color(0xFF000000),
            ), ),
          SizedBox(height: 6),
          Text(
            "Social media integrations",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'AirbnbCereal',
              fontWeight: FontWeight.w500,
              color: ktColor,
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        //backend
                      },
                      child: Container(
                        child: SvgPicture.asset("icons/Facebook_white.svg"),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        //backend
                      },
                      child: Container(
                        child: SvgPicture.asset("icons/Instagram_white.svg"),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        //backend
                      },
                      child: Container(
                        child: SvgPicture.asset("icons/Twitter_white.svg"),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        //backend
                      },
                      child: Container(
                        child: SvgPicture.asset("icons/LinkedIN_white.svg"),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        //backend
                      },
                      child: Container(
                        child: SvgPicture.asset("icons/Youtube_white.svg"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0,top: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          //backend
                        },
                        child: Container(
                          child: SvgPicture.asset("icons/Reddit_white.svg"),
                        ),
                      ),
                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {
                          //backend
                        },
                        child: Container(
                          child: SvgPicture.asset("icons/Pinterest_white.svg"),
                        ),
                      ),
                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {
                          //backend
                        },
                        child: Container(
                          child: SvgPicture.asset("icons/Tik Tok_white.svg"),
                        ),
                      ),
                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {
                          //backend
                        },
                        child: Container(
                          child: SvgPicture.asset("icons/Dropbox_white.svg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
    ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Name",
        fillColor: kboxColor,
        filled: true,
        hintStyle: TextStyle(
          fontFamily: 'AirbnbCereal',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildCompanyRepresentativeField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Company representative",
        fillColor: kboxColor,
        filled: true,
        hintStyle: TextStyle(
          fontFamily: 'AirbnbCereal',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildNumberFormField() {
    return TextFormField(

      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Phone number",
        fillColor: kboxColor,
        filled: true,
        hintStyle: TextStyle(
          fontFamily: 'AirbnbCereal',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }


  TextFormField buildLogocompanyField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Logo of the company",
        fillColor: kboxColor,
        filled: true,
        hintStyle: TextStyle(
          fontFamily: 'AirbnbCereal',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),

    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: kboxColor,
        filled: true,
        hintText: "Email address",
        hintStyle: TextStyle(
          fontFamily: 'AirbnbCereal',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kColor,
        ),

        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
