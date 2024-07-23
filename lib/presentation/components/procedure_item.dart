import 'package:flutter/material.dart';
import 'package:sesac_ton/data/model/procedure.dart';
import 'package:sesac_ton/ui/color_styles.dart';
import 'package:sesac_ton/ui/text_styles.dart';

class ProcedureItem extends StatelessWidget {
  final Procedure procedure;
  final int index;

  const ProcedureItem({
    super.key,
    required this.procedure, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorStyles.grey4,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step ${index + 1}',
                style: Fonts.smallerTextBold.copyWith(
                  color: ColorStyles.black2,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                procedure.content,
                style: Fonts.smallerTextRegular.copyWith(
                  color: ColorStyles.grey3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
