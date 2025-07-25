import 'package:flutter/material.dart';

import '../constants/constant.dart';

class AppToggleButton extends StatefulWidget {
  final Function(bool) onToggle;
  final String? text;

  const AppToggleButton({super.key, required this.onToggle, this.text});

  @override
  State<AppToggleButton> createState() => _AppToggleButtonState();
}

class _AppToggleButtonState extends State<AppToggleButton> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.text != null)
          Flexible(
            child: FittedBox(
              child: Text(
                widget.text ?? "Text Here",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.colorTextWhite,
                ),
              ),
            ),
          ),
        if (widget.text != null) const SizedBox(width: 3),
        Flexible(
          child: FittedBox(
            child: SizedBox(
              height: 40,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Switch.adaptive(
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.black,
                  activeTrackColor: AppColors.primaryColor,
                  inactiveTrackColor: AppColors.primaryColor,
                  thumbIcon: switchIcon,
                  value: _isToggled,
                  onChanged: (bool value) {
                    setState(() {
                      _isToggled = value;
                    });
                    widget.onToggle(value);
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Theme of button
  final WidgetStateProperty<Icon?> switchIcon =
      WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return const Icon(Icons.check, color: Colors.black);
        }
        return const Icon(Icons.close, color: Colors.white);
      });
}
