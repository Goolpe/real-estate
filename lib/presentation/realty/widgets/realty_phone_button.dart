import 'package:flutter/material.dart';
import 'package:realestate/core/utils/utils.dart';
import 'package:realestate/presentation/widgets/widgets.dart';

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
            ErrorSnackBar('The phone number is incorrect :(').show(context);
          }
        });
      },
    );
  }
}
