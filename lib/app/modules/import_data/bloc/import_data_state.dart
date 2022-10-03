part of 'import_data_bloc.dart';

abstract class ImportDataState extends Equatable {
  const ImportDataState();

  @override
  List<Object> get props => [];
}

class ImportDataInitial extends ImportDataState {}

class ImportDataLoading extends ImportDataState {}

class ImportDataSuccess extends ImportDataState {
  const ImportDataSuccess(this.messageSuccess);

  final String messageSuccess;

  @override
  List<Object> get props => [messageSuccess];
}

class ImportDataFailure extends ImportDataState {
  const ImportDataFailure(this.messagaError);

  final String messagaError;

  @override
  List<Object> get props => [messagaError];
}
