import 'package:flutter/material.dart';

import '../../../../shared/constants/constant.dart';

class SearchByEnglishDefinitionButton extends StatefulWidget {
  final Function(bool) onToggle;

  const SearchByEnglishDefinitionButton({super.key, required this.onToggle});

  @override
  State<SearchByEnglishDefinitionButton> createState() =>
      _SearchByEnglishDefinitionButtonState();
}

class _SearchByEnglishDefinitionButtonState
    extends State<SearchByEnglishDefinitionButton> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FittedBox(
            child: Text(
              "Search by English \ndefinition:",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.colorTextWhite,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
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
      WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(
          Icons.check,
          color: Colors.black,
        );
      }
      return const Icon(
        Icons.close,
        color: Colors.white,
      );
    },
  );
}
