import 'package:flutter/material.dart';
import 'package:flutter_template_by_sda/shared/utils/extensions/context_extensions.dart';
import 'package:flutter_template_by_sda/shared/utils/extensions/string_extensions.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.color,
    this.showLineThrough,
    this.fontWeight,
    this.fontStyle,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.height,
    this.showUnderline,
    this.underlineOrLineColor,
    this.letterSpacing,
    this.softWrap,
    this.overflow,
    this.firstUpperCaseWidget = false,
  });

  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? fontSize;
  final double? height;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool? showLineThrough;
  final bool? showUnderline;
  final Color? underlineOrLineColor;
  final double? letterSpacing;
  final bool? softWrap;
  final TextOverflow? overflow;
  final bool firstUpperCaseWidget;

  TextStyle textStyle(BuildContext context) {
    return TextStyle(
      color: color ?? context.color.secondary,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize,
      decoration:
          showLineThrough ?? false
              ? TextDecoration.lineThrough
              : showUnderline ?? false
              ? TextDecoration.underline
              : null,
      decorationColor: underlineOrLineColor,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      firstUpperCaseWidget ? text.toCapitalize() : text,
      maxLines: maxLines,
      softWrap: true,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: textStyle(context),
      textAlign: textAlign,
      textScaler: TextScaler.noScaling,
    );
  }
}
