part of 'add_adoption_form.dart';

class __Name extends StatefulWidget {
  const __Name();
  @override
  State<__Name> createState() => ___NameState();
}

class ___NameState extends State<__Name> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, NotEmpty>(
      selector: (state) {
        return state.name;
      },
      builder: (context, state) {
        return AppTextFormField(
          controller: controller..text = state.value,
          hintText: AppText.enter,
          errorText: state.isPure ? null : state.error,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(AddAdoptionEvent.name(value));
          },
          headerText: AppText.name,
          isMandatory: true,
        );
      },
    );
  }
}

class __Address extends StatelessWidget {
  const __Address();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, NotEmpty>(
      selector: (state) {
        return state.address;
      },
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.value,
          hintText: AppText.enter,
          errorText: state.isPure ? null : state.error,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(
              AddAdoptionEvent.address(value),
            );
          },
          headerText: AppText.address,
          isMandatory: true,
        );
      },
    );
  }
}

class __Phone extends StatelessWidget {
  const __Phone();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, MobileNo>(
      selector: (state) {
        return state.phone;
      },
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.value,
          keyboardType: TextInputType.phone,
          hintText: AppText.enter,
          errorText: state.isPure ? null : state.error,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(AddAdoptionEvent.phone(value));
          },
          headerText: AppText.phone,
          isMandatory: true,
        );
      },
    );
  }
}

class __Email extends StatelessWidget {
  const __Email();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, Email>(
      selector: (state) {
        return state.email;
      },
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.value,
          hintText: AppText.enter,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(AddAdoptionEvent.email(value));
          },
          headerText: AppText.email,
          errorText: state.isPure ? null : state.error,
        );
      },
    );
  }
}

class __Years extends StatelessWidget {
  const __Years();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdoptionBloc, AddAdoptionState>(
      builder: (context, state) {
        return Column(
          children: [
            AppCustomDateField(
              headerText: AppText.dateOfBirth,
              selectedDate: DateTime.tryParse(state.dob.value),
              isMandatory: true,
              maxDate: DateTime(
                DateTime.now().year,
                DateTime.now().month,
                DateTime.now().day,
              ),
              suffixIcon: Iconsax.calendar,
              onChange: (date) {
                context.read<AddAdoptionBloc>().add(
                  AddAdoptionEvent.dob(date.toString()),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class __Months extends StatelessWidget {
  const __Months();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdoptionBloc, AddAdoptionState>(
      builder: (context, state) {
        return CustomDropdownSearch(
          title: AppText.gender,
          isMandatory: true,
          selectedItem: state.gender.value,
          items: const [
            DropItemModel(id: 1, value: 'Male'),
            DropItemModel(id: 2, value: 'Female'),
          ],
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(
              AddAdoptionEvent.petGender(value!),
            );
          },
          label: AppText.select,
        );
      },
    );
  }
}

class __PetType extends StatelessWidget {
  const __PetType();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdoptionBloc, AddAdoptionState>(
      builder: (context, state) {
        final List<DropStringItem> petTypes = [
          DropStringItemModel(id: PetType.Dog.name, value: 'Dog'),
          DropStringItemModel(id: PetType.Cat.name, value: 'Cat'),
        ];
        return CustomStringDropdownSearch(
          selectedItem:
              state.petType.name == 'Dog'
                  ? DropStringItemModel(id: PetType.Dog.name, value: 'Dog')
                  : DropStringItemModel(id: PetType.Cat.name, value: 'Cat'),
          title: AppText.petType,
          errorText: state.breed.isPure ? null : state.breed.error,
          items: petTypes,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(
              AddAdoptionEvent.petType(
                value!.value == 'Dog' ? PetType.Dog : PetType.Cat,
              ),
            );
          },
          label: AppText.select,
          isMandatory: true,
        );
      },
    );
  }
}

class __Breed extends StatelessWidget {
  const __Breed();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdoptionBloc, AddAdoptionState>(
      builder: (context, state) {
        final petType = state.petType.name.toLowerCase();
        final isDog = petType == 'dog';
        final isCat = petType == 'cat';

        return CustomStringDropdownSearch(
          selectedItem: state.breed.value,
          title: AppText.breed,
          items:
              isCat
                  ? state.catBreeds
                  : isDog
                  ? state.dogBreeds
                  : [],
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(AddAdoptionEvent.breed(value!));
          },
          label: AppText.select,
          isMandatory: true,
        );
      },
    );
  }
}

class __Description extends StatelessWidget {
  const __Description();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, NotEmpty>(
      selector: (state) {
        return state.description;
      },
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.value,
          hintText: AppText.enter,
          borderRadius: Styles.borderRadiusCircular25,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(
              AddAdoptionEvent.description(value),
            );
          },
          maxLines: 7,
          heigth: 140,
          headerText: AppText.description,
        );
      },
    );
  }
}

class __Media extends StatelessWidget {
  const __Media();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, NotEmpty>(
      selector: (state) {
        return state.url;
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MandatoryFieldWidget(labelText: AppText.media, required: true),
            DottedBorderWidget(
              paths: state.value.isEmpty ? [] : [state.value],

              onAdd: (v) {
                context.read<AddAdoptionBloc>().add(AddAdoptionEvent.image(v));
              },
            ),
          ],
        );
      },
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
