import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:login_register_screen/components.dart';
import 'package:login_register_screen/screens/register_screen.dart';
import 'package:login_register_screen/styles.dart';
import 'package:login_register_screen/widgets/default_button.dart';
import 'package:login_register_screen/widgets/my_divider.dart';
import 'package:login_register_screen/widgets/text_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://img.freepik.com/free-photo/colorful-mess-watercolor-drops_23-2147748925.jpg?size=626&ext=jpg'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome to Fashion Daily',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          'Sign In',
                          style: kMainTextStyle,
                        ),
                        const Spacer(),
                        const MyTextButton(
                          text: 'Help',
                          color: Colors.blue,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.help,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    IntlPhoneField(
                      controller: phoneController,
                      validator: (value) {
                        if (value!.number.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'EG',
                      
                    ),
                    const SizedBox(height: 20),
                    DefaultButton(
                      text: 'Sign In',
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      },
                    ),
                    const SizedBox(height: 20),
                    //or divider
                    const MyDivider(),
                    const SizedBox(height: 20),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.blue,
                        fixedSize: const Size(double.infinity, 50),
                        side: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.google,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Sign In with Google',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: kHandleTextStyle,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        MyTextButton(
                          text: 'Register Here',
                          color: Colors.blue,
                          onPressed: () {
                            navigateTo(context, RegisterScreen());
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'use the application according to policy rules. Any misuse of the application will be prosecuted to the fullest extent of the law.',
                      textAlign: TextAlign.center,
                      style: kSecondaryTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
