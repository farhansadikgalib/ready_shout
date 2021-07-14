import 'package:flutter/material.dart';
import 'package:ready_shout/components/rounded_button.dart';
import 'package:ready_shout/screens/customer_added_down/customer_added_down.dart';
import 'package:ready_shout/screens/down/down.dart';
import '../../../constants.dart';


class Customeradded extends StatefulWidget {
  @override
  _CustomeraddedState createState() => _CustomeraddedState();
}

class _CustomeraddedState extends State<Customeradded> {
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
          buildNameFormField(),
          SizedBox(height: 10),
          buildEmailFormField(),
          SizedBox(height: 10),
          buildNumberFormField(),
          SizedBox(height: 44),
          RoundedButton(
            text: "Add Customer",
            color: kPrimaryColor,
            press: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) {
                    return CustomerDown();
                  },
                ),
              );
            },
          ),
    ],
    ),
    );
  }


  TextFormField buildNameFormField() {
    return TextFormField(
      obscureText: true,
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

  TextFormField buildNumberFormField() {
    return TextFormField(
      obscureText: true,
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
        hintText: "Email",
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
