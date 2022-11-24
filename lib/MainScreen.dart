import 'dart:developer';

import 'package:flutter/material.dart';

import 'CustomTextInput.dart';

class MainScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _paymentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom TextInput',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Image.asset(
                  'assets/image/logo.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              CustomTextInput(
                textEditController: _nameController,
                hintTextString: 'Enter User name',
                inputType: InputType.Default,
                enableBorder: true,
                themeColor: Theme.of(context).primaryColor,
                cornerRadius: 48.0,
                maxLength: 24,
                prefixIcon: Icon(Icons.person, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: 'User name cannot be empty',
                labelText: 'User Name',
              ),
              CustomTextInput(
                textEditController: _emailController,
                hintTextString: 'Enter Email',
                inputType: InputType.Email,
                enableBorder: true,
                themeColor: Theme.of(context).primaryColor,
                cornerRadius: 48.0,
                maxLength: 24,
                prefixIcon: Icon(Icons.person, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: 'Email cannot be empty',
                labelText: 'Email',
              ),
              CustomTextInput(
                textEditController: _passwordController,
                hintTextString: 'Enter Password',
                inputType: InputType.Password,
                enableBorder: true,
                themeColor: Theme.of(context).primaryColor,
                cornerRadius: 48.0,
                maxLength: 16,
                prefixIcon: Icon(Icons.lock, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: 'Password cannot be empty',
                labelText: 'Password',
              ),
              CustomTextInput(
                textEditController: _phoneController,
                hintTextString: 'Enter Number',
                inputType: InputType.Number,
                enableBorder: true,
                themeColor: Theme.of(context).primaryColor,
                cornerRadius: 48.0,
                maxLength: 10,
                prefixIcon: Icon(Icons.person, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: 'Number cannot be empty',
                labelText: 'Number',
              ),
              CustomTextInput(
                textEditController: _paymentController,
                hintTextString: 'Enter Card Number',
                inputType: InputType.PaymentCard,
                enableBorder: true,
                themeColor: Theme.of(context).primaryColor,
                cornerRadius: 48.0,
                maxLength: 10,
                prefixIcon: Icon(Icons.person, color: Theme.of(context).primaryColor),
                textColor: Colors.black,
                errorMessage: 'Card Number cannot be empty',
                labelText: 'Card Number',
              ),
              const SizedBox(
                height: 20,
              ),
              RaisedButton(
                //     disabledColor: Colors.red,
                // disabledTextColor: Colors.black,
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  log('username : ${_nameController.text}');
                  log('email : ${_emailController.text}');
                },
                child: const Text('Enabled Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}