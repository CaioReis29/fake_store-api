import 'package:fake_store_api/common/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingSingleProduct extends StatelessWidget {
  const LoadingSingleProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            CustomShimmer(
              height: MediaQuery.sizeOf(context).height * 0.40,
              width: MediaQuery.sizeOf(context).width * 0.65,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomShimmer(
                height: 20,
                width: MediaQuery.sizeOf(context).width * 0.3,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomShimmer(
                  height: 20,
                  width: MediaQuery.sizeOf(context).width * 0.3,
                ),
                CustomShimmer(
                  height: 20,
                  width: MediaQuery.sizeOf(context).width * 0.3,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomShimmer(
                  height: 20,
                  width: MediaQuery.sizeOf(context).width * 0.3,
                ),
                CustomShimmer(
                  height: 20,
                  width: MediaQuery.sizeOf(context).width * 0.3,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomShimmer(
                height: 20,
                width: MediaQuery.sizeOf(context).width * 0.3,
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomShimmer(
                height: MediaQuery.sizeOf(context).height * 0.2,
                width: MediaQuery.sizeOf(context).width * 0.9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
