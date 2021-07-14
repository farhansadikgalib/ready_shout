import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ready_shout/components/form_error.dart';
import 'package:ready_shout/components/rounded_button.dart';
import 'package:ready_shout/screens/Welcome/welcome_screen.dart';
import 'package:ready_shout/screens/sign_in/sign_in_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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
          SizedBox(height: 10),
          buildPasswordFormField(),
          SizedBox(height: 10),
          buildConfirmPasswordFormField(),
          SizedBox(height: 5),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: ktColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me",
                style: TextStyle(
                  color: kColor,
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: 8),
          RoundedButton(
            text: "Sign up",
            color: kPrimaryColor,
            press: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
                  },
                ),
              );
            },
          ),
          SizedBox(height: 10),
    Center(
      child: RichText(
      text: TextSpan(
      text: 'By continuing, you agree to ReadyShout’s',
      style: TextStyle(
        fontSize: 13,
        fontFamily: 'AirbnbCereal',
        fontWeight: FontWeight.w500,
        color: kColor,),
      children: <TextSpan>[
      TextSpan(text: '\n        Terms of Service',
      style: TextStyle(
        fontSize: 13,
        fontFamily: 'AirbnbCereal',
        fontWeight: FontWeight.bold,
        color: kColor,),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // navigate to desired screen
            }
      ),
        TextSpan(text: ' and ',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'AirbnbCereal',
              fontWeight: FontWeight.w500,
              color: kColor,)
        ),
      TextSpan(
      text: 'Privacy Policy',
      style: TextStyle(fontSize: 13,
        fontFamily: 'AirbnbCereal',
        fontWeight: FontWeight.bold,
        color: kColor,),
      recognizer: TapGestureRecognizer()
      ..onTap = () {
      // navigate to desired screen
      }
      )
          ],
        ),
      ),
    ),
          SizedBox(height: 45),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontFamily: 'AirbnbCereal',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: kColor,
                    ),
                  ),

                  GestureDetector(
                    onTap: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) {
                    return SignInScreen();
                    },
                    ),
                    ),
                    },
                    child: Text(
                      "Sign in",
                      style:  TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: kColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),



    ],
    ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
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
        hintText: "Password",
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


  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
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
        hintText: "Confirm password",
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
        hintText: "Company name",
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
