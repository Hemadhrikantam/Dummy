part of 'add_adoption_form.dart';

class __Name extends StatelessWidget {
  const __Name();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.name,
    );
  }
}

class __Address extends StatelessWidget {
  const __Address();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.address,
    );
  }
}

class __Phone extends StatelessWidget {
  const __Phone();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.phone,
    );
  }
}

class __Email extends StatelessWidget {
  const __Email();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.email,
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

class __Description extends StatelessWidget {
  const __Description();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      borderRadius: Styles.borderRadiusCircular25,
      onChanged: (value) {},
      maxLines: 7,
      heigth: 140,
      headerText: AppText.description,
    );
  }
}

class __Media extends StatelessWidget {
  const __Media();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MandatoryFieldWidget(labelText: AppText.media, required: false),
        DottedBorderWidget(),
      ],
    );
  }
}

class AddVaccinationBtn extends StatelessWidget {
  const AddVaccinationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      name: Text(
        AppText.addVaccination,
        style: context.textTheme.titleSmall?.copyWith(
          color: AppColors.buttonTextColor,
        ),
      ),
    );
  }
}
