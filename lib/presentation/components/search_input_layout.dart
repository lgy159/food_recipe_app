import 'package:flutter/material.dart';

import '../../ui/color_styles.dart';

class SearchInputLayout extends StatelessWidget {
  final void Function() onTap;

  const SearchInputLayout({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: ColorStyles.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: ColorStyles.grey4,
                    width: 1.0,
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: ColorStyles.grey4,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Search recipe',
                      style: TextStyle(
                        color: ColorStyles.grey4,
                      ),
                    ),
                  ],
                )),
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
              color: ColorStyles.white,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
