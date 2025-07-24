part of 'add_pet_form.dart';

class __PetName extends StatelessWidget {
  __PetName();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocSelector<PetFormBloc, PetFormState, NotEmpty>(
      selector: (state) {
        return state.petName;
      },
      builder: (context, state) {
        return AppTextFormField(
          headerText: AppText.petsName,
          controller: controller..text = state.value,
          isMandatory: true,
          hintText: 'Enter Pet Name',
          onChanged: (value) {
            context.read<PetFormBloc>().add(PetFormEvent.petName(value));
          },
        );
      },
    );
  }
}

class __Age extends StatelessWidget {
  const __Age();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetFormBloc, PetFormState>(
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
                context.read<PetFormBloc>().add(
                  PetFormEvent.dob(date.toString()),
                );
              },
            ),
            if (state.dob.isValid) Styles.gap4,
            if (state.dob.isValid)
              Text(
                AppUtil.calculateAge(
                  AppUtil.formatDateToMMDDYYYY(
                    DateTime.tryParse(state.dob.value)!,
                  ),
                ),
                style: TextStyle(
                  color: AppColors.stepperColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
          ],
        );
      },
    );
  }
}

class __PetGender extends StatelessWidget {
  const __PetGender();

  @override
  Widget build(BuildContext context) {
    return CustomDropdownSearch(
      title: AppText.gender,
      isMandatory: true,
      items: [
        DropItemModel(id: 1, value: 'Male'),
        DropItemModel(id: 2, value: 'Female'),
      ],
      onChanged: (value) {
        context.read<PetFormBloc>().add(PetFormEvent.petGender(value!));
      },
      label: AppText.select,
    );
  }
}

class __PetType extends StatelessWidget {
  const __PetType();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetFormBloc, PetFormState>(
      builder: (context, state) {
        return CustomDropdownSearch(
          title: AppText.petType,
          selectedItem:
              state.petType == PetType.Cat
                  ? DropItemModel(id: 1, value: 'Cat')
                  : DropItemModel(id: 2, value: 'Dog'),
          items: [
            DropItemModel(id: 1, value: 'Cat'),
            DropItemModel(id: 2, value: 'Dog'),
          ],
          onChanged: (value) {
            context.read<PetFormBloc>().add(
              PetFormEvent.petType(
                value?.value == "Cat" ? PetType.Cat : PetType.Dog,
              ),
            );
          },
          label: AppText.select,
        );
      },
    );
  }
}

class __Breed extends StatelessWidget {
  const __Breed();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetFormBloc, PetFormState>(
      builder: (context, state) {
        return CustomDropdownSearch(
          items:
              state.petType == PetType.Cat ? state.catbreeds : state.dogbreeds,
          selectedItem: state.breed.value,
          isMandatory: true,
          title: AppText.breed,
          onChanged: (value) {
            if (value != null) {
              context.read<PetFormBloc>().add(PetFormEvent.breed(value));
            }
          },
        );
      },
    );
  }
}

class __Weight extends StatelessWidget {
  const __Weight();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetFormBloc, PetFormState>(
      builder: (context, state) {
        return AppTextFormField(
          controller: TextEditingController(
            text:
                state.weight.isPure
                    ? ''
                    : '${state.weight.value} ${state.weightUnit.value}',
          ),
          headerText: AppText.weight,
          isMandatory: true,
          hintText: 'Select',
          onTap: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.white,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (_) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: SizedBox(
                    height: 300,
                    child: WeightPickerBody(
                      weight: int.parse(
                        state.weight.value.isEmpty ? "0" : state.weight.value,
                      ),
                      onSave: (value, unit) {
                        context.read<PetFormBloc>().add(
                          PetFormEvent.weight(value.toString()),
                        );
                        context.read<PetFormBloc>().add(
                          PetFormEvent.weightUnit(unit),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          },
          readOnly: true,
          suffixIconColor: Colors.grey.shade700,
          suffixIcon: Icons.keyboard_arrow_down,
        );
      },
    );
  }
}

class __PersonalityTags extends StatelessWidget {
  const __PersonalityTags();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetFormBloc, PetFormState>(
      builder: (context, state) {
        LogUtility.warning('Personality Tags: ${state.personalityTags.length}');
        return Column(
          children: [
            CustomMultiDropdownSearch(
              items: state.personalityTags,
              title: AppText.personalitytags,
              isMandatory: true,
              onChanged: (p0) {
                context.read<PetFormBloc>().add(PetFormEvent.addTag(p0));
              },
            ),
            if (state.selectedPersonalityTags.isNotEmpty)
              SizedBox(
                height: context.height * .065,
                child: Theme(
                  data: ThemeData(
                    highlightColor: AppColors.stepperColor
                  ),
                  child: Scrollbar(    
                    child: AppCustomListViewBuilder(
                      isExpand: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: state.selectedPersonalityTags.length,
                      separatorBuilder: (context, i) => Styles.gap10,
                      itemBuilder: (context, index) {
                        final items = state.selectedPersonalityTags;
                        final ind = state.selectedPersonalityTags.indexWhere(
                          (e) => e.value?.id == items[index].value?.id,
                        );
                        return PersonalityTagCard(
                          index: ind,
                          tag:
                              state.selectedPersonalityTags[index].value?.value ??
                              '',
                        );
                      },
                    ),
                  ),
                ),
              ),
          ],
        );
      },
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
              context.read<PetFormBloc>().add(PetFormEvent.removeTag(index));
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

class __UploadImage extends StatefulWidget {
  const __UploadImage();

  @override
  State<__UploadImage> createState() => ___UploadImage();
}

class ___UploadImage extends State<__UploadImage> {
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final images = await customFilePicker(context);
        if (images.isNotEmpty) {
          context.read<PetFormBloc>().add(PetFormEvent.petImage(images.first));
          setState(() {
            _image = XFile(images.first);
          });
        }
      },
      child: CircleAvatar(
        radius: 100,
        backgroundColor: AppColors.buttonBackground,
        backgroundImage: _image != null ? FileImage(File(_image!.path)) : null,
        child:
            _image == null
                ? Text(
                  AppText.upload,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: AppColors.buttonTextColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                )
                : null,
      ),
    );
  }
}
