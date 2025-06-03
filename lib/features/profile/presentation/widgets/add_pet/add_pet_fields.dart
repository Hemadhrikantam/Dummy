part of 'add_pet_form.dart';

class __PetName extends StatelessWidget {
  const __PetName();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.petsName,
    );
  }
}

class __Age extends StatelessWidget {
  const __Age();

  @override
  Widget build(BuildContext context) {
    return CustomDropdownSearch(
      title: AppText.age,
      items: [],
      onChanged: (value) {},
      label: AppText.select,
    );
  }
}

class __PetType extends StatelessWidget {
  const __PetType();

  @override
  Widget build(BuildContext context) {
    return CustomDropdownSearch(
      title: AppText.petType,
      items: [],
      onChanged: (value) {},
      label: AppText.select,
    );
  }
}

class __Breed extends StatelessWidget {
  const __Breed();

  @override
  Widget build(BuildContext context) {
    return CustomDropdownSearch(
      title: AppText.breed,
      items: [],
      onChanged: (value) {},
      label: AppText.select,
    );
  }
}

class __Weight extends StatelessWidget {
  const __Weight();

  @override
  Widget build(BuildContext context) {
    return CustomDropdownSearch(
      title: AppText.weight,
      items: [],
      onChanged: (value) {},
      label: AppText.select,
    );
  }
}

class __PersonalityTags extends StatelessWidget {
  const __PersonalityTags();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropdownSearch(
          title: AppText.personalitytags,
          items: [],
          onChanged: (value) {},
          label: AppText.select,
        ),
        // Row(
        //   children: [
        //     PersonalityTagCard(),
        //     Styles.gap10,
        //     PersonalityTagCard(),
        //     Styles.gap10,
        //     PersonalityTagCard(),
        //   ],
        // ),
      ],
    );
  }
}

class PersonalityTagCard extends StatelessWidget {
  const PersonalityTagCard({super.key, required this.index, required this.tag});
  final int index;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: Styles.edgeInsetsAll06,
      borderRadius: Styles.borderRadiusCircular40,
      borderColor: AppColors.transparent,
      backgroundColor: AppColors.stepperColor.withOpacity(.2),
      child: Row(
        children: [
          Text(
            tag,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          Styles.gap10,
          GestureDetector(
            onTap: () {
              context.read<RegisterBloc>().add(RegisterEvent.removeTag(index));
            },
            child: CircleAvatar(
              radius: 9,
              backgroundColor: AppColors.stepperColor.withOpacity(.4),
              child: AppIcon(
                icon: Icons.close,
                color: AppColors.stepperColor,
                size: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class __UploadImage extends StatelessWidget {
  const __UploadImage();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.buttonBackground,
      radius: 100,
      child: Text(
        AppText.upload,
        style: context.textTheme.titleMedium?.copyWith(
          color: AppColors.buttonTextColor,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
}
