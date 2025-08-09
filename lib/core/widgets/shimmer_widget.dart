import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class DashboardShimmer extends StatelessWidget {
  const DashboardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Styles.edgeInsetsAll10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styles.gap40,
          Row(
            children: [
              FadeShimmer(
                height: 35,
                width: 180,
                radius: 12,
                fadeTheme: FadeTheme.light,
              ),
              Styles.gap50,
            ],
          ),

          Styles.gap20,

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FadeShimmer.round(
                  size: 50,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.grey.shade300,
                ),
              );
            }),
          ),
          Styles.gap20,
          Row(
            children: [
              Expanded(
                child: FadeShimmer(
                  height: 25,
                  width: context.width,
                  radius: 8,
                  fadeTheme: FadeTheme.light,
                ),
              ),
            ],
          ),
          Styles.gap10,

          // Pet profile fields (Name, Breed, Age, PetType, etc.)
          FadeShimmer(
            height: 180,
            width: double.infinity,
            radius: 20,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.grey.shade300,
            fadeTheme: FadeTheme.light,
          ),
          const SizedBox(height: 20),

          // Quick Actions section
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.1,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    FadeShimmer(
                      height: 90,
                      width: 100,
                      radius: 15,
                      highlightColor: Colors.grey.shade200,
                      baseColor: Colors.grey.shade300,
                      fadeTheme: FadeTheme.light,
                    ),
                  ],
                ),
              );
            },
          ),

          const SizedBox(height: 30),

          // Wag AI Tip section
          FadeShimmer(
            height: 18,
            width: 200,
            radius: 4,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.grey.shade300,
            fadeTheme: FadeTheme.light,
          ),
          const SizedBox(height: 8),
          FadeShimmer(
            height: 14,
            width: double.infinity,
            radius: 4,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.grey.shade300,
            fadeTheme: FadeTheme.light,
          ),
          const SizedBox(height: 8),
          FadeShimmer(
            height: 60,
            width: double.infinity,
            radius: 10,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.grey.shade300,
            fadeTheme: FadeTheme.light,
          ),
        ],
      ),
    );
  }
}

class ImageLoadingShimmer extends StatelessWidget {
  const ImageLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeShimmer(
      height: 60,
      width: 60,
      radius: 12,
      fadeTheme: FadeTheme.light,
    );
  }
}
