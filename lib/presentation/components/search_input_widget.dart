import 'package:flutter/material.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class SearchInputWidget extends StatelessWidget {
  final void Function(String text) onChanged;

  const SearchInputWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextField(
              onChanged: onChanged,
              style: Fonts.smallerTextRegular.copyWith(
                color: ColorStyles.black,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: ColorStyles.grey4),
                hintText: 'Search recipe',
                hintStyle: Fonts.smallerTextRegular.copyWith(
                  color: ColorStyles.grey4,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10), // Adjust padding to center text vertically
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorStyles.primary80,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorStyles.grey4,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: ColorStyles.primary100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Icon(
              Icons.tune,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
