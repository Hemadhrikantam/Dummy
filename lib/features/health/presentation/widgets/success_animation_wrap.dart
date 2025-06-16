import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';

class SuccessAnimationWrap extends StatefulWidget {
  const SuccessAnimationWrap({super.key, required this.child});
  final Widget child;
  @override
  State<SuccessAnimationWrap> createState() => _SuccessAnimationWrapState();
}

class _SuccessAnimationWrapState extends State<SuccessAnimationWrap> {
  bool _showImage = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _showImage = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.loose,
      children: [
        widget.child,
        if (_showImage) Container(
          constraints: BoxConstraints(
            maxHeight: 350
          ),
          child: AppAssestsImage(path: ImageResources.successAnimation
          
          )),
      ],
    );
  }
}
