import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // City name placeholder
            Container(
              margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            // Temperature placeholder
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                height: 120,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            // Weather condition placeholder
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            // Weather details placeholders
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: List.generate(4, (index) =>
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                ),
              ),
            ),

            // Forecast header placeholder
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              height: 30,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            // Hourly forecast placeholders
            Container(
              margin: const EdgeInsets.all(16),
              height: 120,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  );
                },
              ),
            ),

            // Daily forecast header placeholder
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              height: 30,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            // Daily forecast placeholders
            Column(
              children: List.generate(5, (index) =>
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}