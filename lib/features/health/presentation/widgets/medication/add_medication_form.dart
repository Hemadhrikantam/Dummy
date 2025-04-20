part of 'add_medication_fields.dart';

class AddMedicationForm extends StatelessWidget {
  const AddMedicationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Stack(
        children: [
          ListView(
            padding: Styles.edgeInsetsOnlyH00,
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
              Styles.gap100,
            ],
          ),
        ],
      ),
    );
  }
}
