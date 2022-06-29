import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:login_register_screen/components.dart';
import 'package:login_register_screen/screens/login_screen.dart';
import 'package:login_register_screen/widgets/default_button.dart';
import 'package:login_register_screen/widgets/default_textform.dart';
import 'package:login_register_screen/widgets/text_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://img.freepik.com/free-photo/colorful-mess-watercolor-drops_23-2147748925.jpg?size=626&ext=jpg',
                    fit: BoxFit.cover,
                    height: 150,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ],
              ),
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
                          'Register',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
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
                      'Email',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DefaultTextForm(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      hintText: 'Eg: example@gmail.com',
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
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DefaultTextForm(
                        controller: passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        hintText: 'Password',
                        isPassword: true,
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )),

                    const SizedBox(height: 20),
                    DefaultButton(
                      text: 'Register',
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      },
                    ),
                    const SizedBox(height: 20),
                    //or divider
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
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
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        MyTextButton(
                          text: 'Sign In',
                          color: Colors.blue,
                          onPressed: () {
                            navigateTo(context, LoginScreen());
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'By signing up, you agree to our Terms of Service and Privacy Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
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
