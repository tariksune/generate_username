import 'package:flutter/material.dart';
import 'package:generate_username/src/create_username.dart';

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void main() {
    CreateUsername().generate_name("tarik", "sune", true); // tariksune
    CreateUsername().generate_name("tarik", "sune", false); // sunetarik
    CreateUsername()
        .generate_name_separator_surname("tarik", "-", "sune"); // tarik-sune
    CreateUsername()
        .generate_name_with_birhdate("tarik", 1995, true); // tarik1995
    CreateUsername()
        .generate_name_with_birhdate("tarik", 1995, false); // tarik95
    CreateUsername()
        .generate_name_with_random_number("tarik", 1, 30); // tarik13
    CreateUsername().generate_username_from_email("info@tariksune.com"); // info
  }
}
