import "package:flutter/material.dart";
import "package:flutter_shop/constat.dart";
import "package:flutter_shop/size_config.dart";

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
    required this.jarak,
  });

  final String text;
  final Function press;
  final double jarak;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: jarak),
      child: SizedBox(
        width: double.infinity,
        height: getProportionateScreenHeight(45),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(kPrimaryColor),
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: () => press,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
