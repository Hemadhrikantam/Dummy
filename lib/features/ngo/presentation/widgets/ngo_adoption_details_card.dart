import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/widgets/app_custom_check_box.dart';
import '../../../../core/widgets/app_custom_chip.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';
import '../bloc/ngo_home/ngo_home_bloc.dart';

class NgoAdoptionDetailsCard extends StatefulWidget {
  const NgoAdoptionDetailsCard({
    super.key,
    required this.isAllPet,
    required this.adoption,
    this.onMarkAsAdopted,
  });
  final bool isAllPet;
  final Listing? adoption;
  final Function(bool)? onMarkAsAdopted;
  @override
  State<NgoAdoptionDetailsCard> createState() => _NgoAdoptionDetailsCardState();
}

class _NgoAdoptionDetailsCardState extends State<NgoAdoptionDetailsCard> {
  bool isChecked = false;
  @override
  initState() {
    isChecked = widget.adoption?.status == 'adopted';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.adoption.toString());
    return BlocBuilder<NgoHomeBloc, NgoHomeState>(
      builder: (context, state) {
        return CustomCard(
          borderColor: AppColors.transparent,
          backgroundColor: AppColors.background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  AppNetworkImage(
                    height: context.height * .3,
                    width: context.width,
                    url: widget.adoption?.imageUrl ?? '',
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding:
                          Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyT20,
                      height: context.height * .1,
                      width: context.width * .89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Styles.radiusCircular08,
                          bottomRight: Styles.radiusCircular08,
                        ),
                        gradient: AppColors.blackAndWhite,
                      ),
                    ),
                  ),
                  if (false)
                    Positioned(
                      top: context.height * .15,
                      right: 10,
                      child: CustomCard(
                        padding: Styles.edgeInsetsAll02,
                        borderRadius: Styles.borderRadiusCircular50,
                        borderColor: AppColors.transparent,
                        child: AppIconButton(
                          padding: Styles.edgeInsetsOnlyH00,
                          backgroundColor: AppColors.transparent,
                          icon: Icons.keyboard_arrow_right_rounded,
                          size: 25,
                          iconColor: AppColors.black,
                          borderColor: AppColors.transparent,
                        ),
                      ),
                    ),
                ],
              ),
              Styles.gap20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.adoption?.petName ?? '',
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.stepperColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  AppCustomChipWidget(
                    backgroundColor: AppColors.backGroundGreen,
                    textColor:
                        isChecked ? AppColors.orenge : AppColors.greenText,
                    subTitle: '',
                    title: isChecked ? 'Unavailable' : 'Available',
                  ),
                ],
              ),
              Styles.gap20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextValueWidget(
                    text: 'Breed & Age',
                    value:
                        '${widget.adoption?.breedName ?? ''}, ${widget.adoption?.age ?? ''} Y',
                  ),
                ],
              ),
              Styles.gap30,
              TextValueWidget(
                text: 'Location',
                value: '${widget.adoption?.contactAddress}',
              ),
              Styles.gap30,
              TextValueWidget(
                text: 'Description',
                value: widget.adoption?.description ?? '',
              ),
              Styles.gap30,
              TextValueWidget(
                text: 'Contact',
                value: '${widget.adoption?.contactPhone}',
                icon:
                    (widget.isAllPet)
                        ? GestureDetector(
                          onTap: () {},
                          child: AppAssestsImage(
                            path: ImageResources.call,
                            height: 20,
                            width: 20,
                            boxFit: BoxFit.contain,
                          ),
                        )
                        : null,
              ),
              Styles.gap30,
              TextValueWidget(
                text: 'Email',
                value: '${widget.adoption?.contactEmail}',
                icon:
                    (widget.isAllPet)
                        ? AppAssestsImage(
                          path: ImageResources.sms,
                          height: 20,
                          width: 20,
                          boxFit: BoxFit.contain,
                        )
                        : null,
              ),
              Styles.gap30,
              if (!widget.isAllPet && state.listing.contains(widget.adoption))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Styles.gap10,
                    CustomCheckBox(
                      isChecked: isChecked,
                      fontSize: 22,
                      label: AppText.markAsAdopted,
                      onChanged: (value) async {
                        setState(() {
                          isChecked = value;
                        });
                        widget.onMarkAsAdopted?.call(value);
                      },
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}

class TextValueWidget extends StatelessWidget {
  const TextValueWidget({
    super.key,
    required this.text,
    required this.value,
    this.icon,
  });
  final String text;
  final String value;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: context.textTheme.bodySmall?.copyWith(
            color: AppColors.black.withOpacity(.5),
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        Row(
          children: [
            Text(
              value,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
            if (icon != null) icon!,
          ],
        ),
      ],
    );
  }
}
