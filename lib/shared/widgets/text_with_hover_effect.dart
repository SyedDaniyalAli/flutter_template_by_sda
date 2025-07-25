import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TextWithHoverEffect extends StatefulWidget {
  final String text;
  final String? selectedText;
  final TextAlign? textAlign;
  final TextStyle? style;
  final bool isHoverEffectOn;
  final VoidCallback? onTap;

  const TextWithHoverEffect({
    super.key,
    required this.text,
    this.textAlign,
    this.style,
    this.selectedText,
    this.isHoverEffectOn = true,
    this.onTap,
  });

  @override
  State<TextWithHoverEffect> createState() => _TextWithHoverEffectState();
}

class _TextWithHoverEffectState extends State<TextWithHoverEffect> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final baseStyle =
        widget.style ??
        TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          decoration:
              _isHovered ? TextDecoration.underline : TextDecoration.none,
        );

    return MouseRegion(
      cursor:
          widget.isHoverEffectOn
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          textAlign: widget.textAlign ?? TextAlign.left,
          style: baseStyle,
          child: _buildRichText(baseStyle),
        ),
      ),
    );
  }

  /// Build RichText with highlighted selectedText
  Widget _buildRichText(TextStyle baseStyle) {
    if (widget.selectedText != null && widget.selectedText!.isNotEmpty) {
      return RichText(
        text: TextSpan(
          children: _highlightOccurrences(
            widget.text,
            widget.selectedText!,
            baseStyle,
          ),
        ),
      );
    } else {
      return Text(widget.text, style: baseStyle);
    }
  }

  /// Highlights all occurrences of selectedText
  List<TextSpan> _highlightOccurrences(
    String text,
    String selectedText,
    TextStyle baseStyle,
  ) {
    final List<TextSpan> spans = [];
    int start = 0;
    int index;

    while ((index = text.indexOf(selectedText, start)) != -1) {
      if (index > start) {
        // Add the text before the highlighted part
        spans.add(
          TextSpan(text: text.substring(start, index), style: baseStyle),
        );
      }

      // Add the highlighted text
      spans.add(
        TextSpan(
          text: selectedText,
          style: baseStyle.copyWith(
            color: AppColors.iconColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

      start = index + selectedText.length;
    }

    // Add the remaining text after the last highlighted part
    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start), style: baseStyle));
    }

    return spans;
  }

  void _onHover(bool isHovered) {
    if (!widget.isHoverEffectOn) {
      return;
    }
    setState(() {
      _isHovered = isHovered;
    });
  }
}
