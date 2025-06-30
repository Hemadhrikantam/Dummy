part of 'add_medication_fields.dart';

class AddMedicationForm extends StatefulWidget {
  const AddMedicationForm({super.key});

  @override
  State<StatefulWidget> createState() => _AddMedicationForm();
}

class _AddMedicationForm extends State<AddMedicationForm> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<MedicationFormBloc>().add(
      MedicationFormEvent.init(petId ?? 0),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.edgeInsetsOnlyH00,
      children: [
        CustomCard(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [__Remainder()],
              ),
              Styles.gap10,
              __TabletName(),
              Styles.gap10,
              __Company(),
              Styles.gap10,
              __Dosage(),
              Styles.gap10,
              __Morning(),
              Styles.gap10,
              __Afternoon(),
              Styles.gap10,
              __Night(),
              Styles.gap10,
              TotalDosage(),
              __Frequency(),
              Styles.gap10,
              __StartDate(),
              Styles.gap10,
              __EndDate(),
              Styles.gap10,
              __Notes(),
              Styles.gap10,
              __Media(),
            ],
          ),
        ),
        Styles.gap100,
      ],
    );
  }
}
