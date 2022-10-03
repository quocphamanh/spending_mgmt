import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'import_data_event.dart';
part 'import_data_state.dart';

class ImportDataBloc extends Bloc<ImportDataEvent, ImportDataState> {
  ImportDataBloc() : super(ImportDataInitial()) {
    on<ImportDataChangedEvent>((event, emit) {});
    on<ImportDataSubmittedEvent>((event, emit) {});
  }
}
