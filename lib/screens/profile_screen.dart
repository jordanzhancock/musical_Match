import 'package:firebase_auth/firebase_auth.dart';
import 'package:musical_matcher/models/auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = '';
  int age = 0;
  String description = '';
  String? _dropdownValue;
  Widget imageProfile() {
    return Stack(
      children: [],
    );
  }

  void dropDownCallback(String? selectedValue) {
    setState(() {
      if (selectedValue is String) {
        _dropdownValue = selectedValue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                minRadius: 15,
                maxRadius: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // first name
                  Text(name),
                  Row(
                    children: [
                      // age
                      Text('$age'),
                      const SizedBox(
                        width: 25.0,
                      ),
                      // gender
                      DropdownButton(
                        hint: const Text('Gender'),
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'Male',
                            child: Text('Male'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Female',
                            child: Text('Female'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Non-Binary',
                            child: Text('Non-Binary'),
                          )
                        ],
                        onChanged: dropDownCallback,
                        value: _dropdownValue,
                      ),
                    ],
                  )
                ],
              ),
              // general description
              Text(description),
            ]),
      ),
    ));
  }
}
