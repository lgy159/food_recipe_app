import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesac_ton/presentation/components/search_input_layout.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello Jaga',
                    style: Fonts.largeTextBold.copyWith(
                      color: ColorStyles.black,
                    ),
                  ),
                  const Spacer(),
                  Transform.translate(
                    offset: const Offset(0, 10),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: ColorStyles.secondary40,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/bread_man.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'What are you cooking today?',
                style: Fonts.smallerTextRegular.copyWith(
                  color: ColorStyles.grey2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SearchInputLayout(
                onTap: () {
                  context.go('/search_recipe');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
