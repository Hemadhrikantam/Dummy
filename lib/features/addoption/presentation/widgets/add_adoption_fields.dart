part of 'add_adoption_form.dart';

class __Name extends StatelessWidget {
  const __Name();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, NotEmpty>(
      selector: (state) {
        return state.name;
      },
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.value,
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
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, DropdownValue>(
      selector: (state) {
        return state.year;
      },
      builder: (context, state) {
        final List<DropItem> years = [
          DropItemModel(id: 1, value: '1'),
          DropItemModel(id: 2, value: '2'),
          DropItemModel(id: 3, value: '3'),
          DropItemModel(id: 4, value: '4'),
          DropItemModel(id: 5, value: '5'),
          DropItemModel(id: 6, value: '6'),
          DropItemModel(id: 7, value: '7'),
          DropItemModel(id: 8, value: '8'),
          DropItemModel(id: 9, value: '9'),
          DropItemModel(id: 10, value: '10'),
          DropItemModel(id: 11, value: '11'),
          DropItemModel(id: 12, value: '12'),
          DropItemModel(id: 13, value: '13'),
          DropItemModel(id: 14, value: '14'),
          DropItemModel(id: 15, value: '15'),
          DropItemModel(id: 16, value: '16'),
          DropItemModel(id: 17, value: '17'),
          DropItemModel(id: 18, value: '18'),
          DropItemModel(id: 19, value: '19'),
          DropItemModel(id: 20, value: '20'),
        ];

        return CustomDropdownSearch(
          selectedItem: state.value,
          title: AppText.age,
          items: years,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(AddAdoptionEvent.year(value!));
          },
          label: 'Year',
          isMandatory: true,
        );
      },
    );
  }
}

class __Months extends StatelessWidget {
  const __Months();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddAdoptionBloc, AddAdoptionState, DropdownValue>(
      selector: (state) {
        return state.month;
      },
      builder: (context, state) {
        final List<DropItem> months = [
          DropItemModel(id: 1, value: '1'),
          DropItemModel(id: 2, value: '2'),
          DropItemModel(id: 3, value: '3'),
          DropItemModel(id: 4, value: '4'),
          DropItemModel(id: 5, value: '5'),
          DropItemModel(id: 6, value: '6'),
          DropItemModel(id: 7, value: '7'),
          DropItemModel(id: 8, value: '8'),
          DropItemModel(id: 9, value: '9'),
          DropItemModel(id: 10, value: '10'),
          DropItemModel(id: 11, value: '11'),
          DropItemModel(id: 12, value: '12'),
        ];
        return CustomDropdownSearch(
          selectedItem: state.value,
          title: '  ',
          items: months,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(AddAdoptionEvent.month(value!));
          },
          label: 'Month',
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
        final List<DropItem> petTypes = [
          DropItemModel(id: 1, value: 'Dog'),
          DropItemModel(id: 2, value: 'Cat'),
          DropItemModel(id: 3, value: 'Snake'),
          DropItemModel(id: 4, value: 'Horse'),
          DropItemModel(id: 5, value: 'Hamster'),
        ];
        return CustomDropdownSearch(
          selectedItem: state.petType.value,
          title: AppText.petType,
          errorText: state.breed.isPure ? null : state.breed.error,
          items: petTypes,
          onChanged: (value) {
            context.read<AddAdoptionBloc>().add(
              AddAdoptionEvent.petType(value!),
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
        final petType = state.petType.value?.value.toLowerCase();
        final isDog = petType == 'dog';
        final isCat = petType == 'cat';

        return CustomDropdownSearch(
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
