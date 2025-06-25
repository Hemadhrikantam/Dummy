import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_form_event.dart';
part 'pet_form_state.dart';
part 'pet_form_bloc.freezed.dart';

class PetFormBloc extends Bloc<PetFormEvent, PetFormState> {
  PetFormBloc() : super(PetFormState()) {
    on<PetFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
