import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';

class NgoInfoCards extends StatelessWidget {
  const NgoInfoCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        _CardWidget(
          title: 'Pets Listed',
          value: 32,
          image: ImageResources.petList,
        ),
        _CardWidget(
          title: 'Active Listings',
          value: 32,
          image: ImageResources.activeList,
        ),
        _CardWidget(
          title: 'Total Adoptions',
          value: 32,
          image: ImageResources.totalAdoption,
        ),
      ],
    );
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    required this.title,
    required this.value,
    required this.image,
  });
  final String title;
  final int value;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 24,
      padding: Styles.edgeInsetsAll08,
      margin: Styles.edgeInsetsAll06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppAssestsImage(
            path: image,
            width: 40,
            height: 40,
            boxFit: BoxFit.contain,
          ),
          Styles.gap8,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 12, color: Colors.grey)),
              Styles.gap4,
              Text(
                value.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
