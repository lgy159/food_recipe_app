import 'package:flutter/material.dart';
import 'package:sesac_ton/data/model/ingrident.dart';
import 'package:sesac_ton/ui/color_styles.dart';
import 'package:sesac_ton/ui/text_styles.dart';

class IngridentItem extends StatelessWidget {
  final Ingrident ingrident;

  const IngridentItem({
    super.key,
    required this.ingrident,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 76,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorStyles.grey4,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorStyles.white,
                  ),
                  child: const Image(
                    image: AssetImage('assets/recipe/tomato.png'),
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ingrident.title,
                  style: Fonts.normalTextBold.copyWith(
                    color: ColorStyles.black2,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${ingrident.weight}g',
                  style: Fonts.smallTextRegular.copyWith(
                    color: ColorStyles.grey3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
