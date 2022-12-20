import 'package:flutter/material.dart';
import 'package:realestate/core/utils/utils.dart';

class RealtyPhoneButton extends StatelessWidget {
  const RealtyPhoneButton({
    required this.phone,
    super.key,
  });

  final String phone;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      icon: const Icon(Icons.phone),
      label: Text(phone),
      onPressed: () {
        launchPhone(phone).then((success) {
          if (!success) {
            const snackBar = SnackBar(
              content: Text(
                'The phone number is incorrect :(',
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 1),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        });
      },
    );
  }
}
