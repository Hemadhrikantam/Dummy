import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'walk_form_event.dart';
part 'walk_form_state.dart';
part 'walk_form_bloc.freezed.dart';

class WalkFormBloc extends Bloc<WalkFormEvent, WalkFormState> {
  WalkFormBloc() : super(WalkFormState()) {
    on<WalkFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
