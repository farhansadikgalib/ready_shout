import 'package:flutter/material.dart';
import 'package:ready_shout/components/custom_icon.dart';
import 'package:ready_shout/components/default_button.dart';
import 'package:ready_shout/components/form_error.dart';
import 'package:ready_shout/components/sign_in_text.dart';
import 'package:ready_shout/components/rounded_button.dart';
import 'package:ready_shout/screens/AddCustomer/customer_added.dart';
import 'package:ready_shout/screens/Customers/customers_screen.dart';
import 'package:ready_shout/screens/Welcome/welcome_screen.dart';


import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: 90),
              Center(
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontFamily: 'AirbnbCereal',
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: ktColor,
                  ),
                ),
              ),
              SizedBox(height: 117.43),
              Text(
                "We’ll send password reset \ninstructions to the email address \nassociated with your account.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 21,
                  fontFamily: 'AirbnbCereal',
                  fontWeight: FontWeight.w500,
                  color: ktColor,
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
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
              labelText: 'Enter email address',
              labelStyle: TextStyle(
                fontFamily: 'AirbnbCereal',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: kColor,
              ),
              hintText: "Email",

              hintStyle: TextStyle(
                fontFamily: 'AirbnbCereal',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: kColor,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: 45.19),
          RoundedButton(
            text: "Reset Password",
            color: kPrimaryColor,
            press: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) {
                    return CustomerAddedScreen();
                  },
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}