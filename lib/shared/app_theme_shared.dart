import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemeShared {
  static Color primaryColor = const Color(0xff20A090);
  static Color secondaryColor = const Color(0xff62B6B7);
  static Color tertiartyColor = const Color(0xff97DECE);

  static appBar(
      {required String title,
      required BuildContext context,
      bool automaticallyImplyLeading = false,
      bool? centerTitle = true,
      Widget? leading,
      List<Widget>? actions,
      Color? backgroundColor = const Color(0xff439A97),
      double textSize = 26,
      Color textColor = Colors.white,
      FontWeight fontWeight = FontWeight.w600}) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: textColor, fontWeight: fontWeight),
      ),
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  static sharedButton(
      {required BuildContext context,
      double height = 60,
      required double width,
      Color color = const Color(0xff62B6B7),
      required String buttonText,
      required dynamic Function()? onTap,
      double borderRadius = 0.0,
      double textSize = 16,
      Color textColor = Colors.white,
      FontWeight fontWeight = FontWeight.w600}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: Size(width, height),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          )),
      onPressed: onTap,
      child: Text(
        buttonText,
        style: TextStyle(fontSize: textSize)
            .copyWith(color: textColor, fontWeight: fontWeight),
      ),
    );

    // return ElevatedButton(
    //     onPressed: onPressed,
  }

  static textFormField(
      {required BuildContext context,
      String labelText = '',
      String hintText = '',
      String? initialValue,
      String prefixText = '',
      TextEditingController? controller,
      TextInputAction? textInputAction,
      TextInputType? keyboardType,
      AutovalidateMode? autovalidateMode,
      FocusNode? focusNode,

      //
      TextStyle style = const TextStyle(fontSize: 18, color: Color(0xff20A090)),
      TextStyle hintStyle =
          const TextStyle(fontSize: 18, color: Color(0xff20A090)),
      //
      String? Function(String?)? validator,
      void Function(String)? onChanged,
      void Function(String?)? onSaved,
      void Function()? onEditingComplete,
      void Function(String)? onFieldSubmitted,
      void Function()? onTap,
      List<TextInputFormatter>? inputFormatters,

      //
      bool obscureText = false,
      bool autoFocus = false,
      bool readonly = false,
      bool expands = false,
      bool enabled = false,

      //
      int? maxLines,
      int? minLines,
      double borderRadius = 0,
      double enabledBorderWidth = 2,

      //
      Color borderColor = const Color(0xff20A090),
      Color enabledBorderColor = const Color(0xff20A090),
      Color focusedBorderColor = const Color(0xff20A090),
      Color disabledBorderColor = const Color(0xff20A090),

      //
      Widget? suffixIcon,
      Widget? prefixIcon,
      bool widthPixel = false,
      double? width = 200,
      double widthPercent = 0.85}) {
    return SizedBox(
      width:
          widthPixel ? width : MediaQuery.of(context).size.width * widthPercent,
      child: TextFormField(
        controller: controller,
        validator: validator,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        initialValue: initialValue,
        obscureText: obscureText,
        autofocus: autoFocus,
        readOnly: readonly,
        expands: expands,
        enabled: true,
        maxLines: maxLines,
        minLines: minLines,
        autovalidateMode: autovalidateMode,
        focusNode: focusNode,
        onChanged: onChanged,
        onSaved: onSaved,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
        inputFormatters: inputFormatters,
        style: style,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          hintStyle: hintStyle,
          labelText: labelText,
          labelStyle:
              TextStyle(fontSize: 16, color: AppThemeShared.primaryColor),
          suffixIcon: suffixIcon,
          isDense: true,
          prefixIcon: prefixIcon,
          prefixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide:
                  BorderSide(color: borderColor, width: enabledBorderWidth)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide:
                  BorderSide(color: borderColor, width: enabledBorderWidth)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                  color: focusedBorderColor, width: enabledBorderWidth)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: disabledBorderColor)),
        ),
      ),
    );
  }

  static sharedRaisedButton({
    required BuildContext context,
    required double height,
    required double width,
    required Color color,
    required String buttonText,
    required void Function()? onPressed,
    double borderRadius = 0.0,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: height, width: width),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  static sharedDropDown({
    required BuildContext context,
    required List<String> items,
    required void Function(String?) onChanged,
    double? height = 50,
    double? width = 200,
    double widthPercent = 0.85,
    bool widthPixel = false,
    Widget? hint,
    String? value,
    String? labelText,
    Color hintColor = const Color(0xff439A97),
    Color borderColor = const Color(0xff439A97),
    Color iconEnabledColor = const Color(0xffFFFFFF),
    Color iconDisabledColor = const Color(0xffFFFFFF),
    Color dropdownColor = const Color(0xff20A090),

    //
    TextStyle style = const TextStyle(color: Colors.white, fontSize: 18),
    //
    double borderRadius = 0,
    double enabledBorderWidth = 2,
    //
    Color enabledBorderColor = Colors.cyan,
    Color focusedBorderColor = const Color(0xff439A97),
    Color disabledBorderColor = const Color(0xffffffff),
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),

      width:
          widthPixel ? width : MediaQuery.of(context).size.width * widthPercent,
      // decoration: BoxDecoration(
      //     border: Border.all(color: AppThemeShared.secondaryColor, width: 2)),
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            // fillColor: AppThemeShared.primaryColor,
            labelText: labelText,
            labelStyle: const TextStyle(fontSize: 16, color: Colors.white),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide:
                    BorderSide(color: borderColor, width: enabledBorderWidth)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                    color: enabledBorderColor, width: enabledBorderWidth)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                    color: focusedBorderColor, width: enabledBorderWidth)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: const BorderSide(color: Colors.white)),
          ),
          iconEnabledColor: iconEnabledColor,
          iconDisabledColor: iconDisabledColor,
          hint: hint,
          isExpanded: true,
          value: value,
          dropdownColor: dropdownColor,
          items: items.map((String item) {
            return DropdownMenuItem(
                value: item,
                child: Text(
                  item.toString(),
                  style: style,
                ));
          }).toList(),
          onChanged: onChanged),
    );
  }
}
