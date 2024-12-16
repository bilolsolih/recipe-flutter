import 'package:Recipes/constants.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String label, placeholder;

  const TextInputField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    this.isPassword = false,
  });

  final bool isPassword;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 9),
          SizedBox(
            height: 41,
            width: 357,
            child: TextField(
              obscureText: isPassword,
              obscuringCharacter: '*',
              controller: controller,
              style: const TextStyle(
                color: AppConstants.beigeColor,
                height: 1.0,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppConstants.pink,
                hintStyle: TextStyle(color: AppConstants.beigeColor.withOpacity(0.45)),
                hintText: placeholder,
                contentPadding: const EdgeInsets.only(left: 36, right: 20),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide.none),
                suffixIcon: isPassword
                    ? const SizedBox(
                        width: 25,
                        height: 20,
                        child: Center(
                          child: Image(
                            image: AssetImage('assets/icons/eye.png'),
                            width: 25,
                            height: 20,
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
