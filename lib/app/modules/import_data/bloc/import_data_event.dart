part of 'import_data_bloc.dart';

abstract class ImportDataEvent extends Equatable {
  const ImportDataEvent();

  @override
  List<Object> get props => [];
}

class ImportDataChangedEvent extends ImportDataEvent {
  const ImportDataChangedEvent({
    required this.dateCreatedAt,
    this.note,
    required this.price,
    required this.category,
  }) : assert(note != null);

  final String dateCreatedAt;
  final String? note;
  final String price;
  final String category;

  @override
  List<Object> get props => [dateCreatedAt, note!, price, category];
}

class ImportDataSubmittedEvent extends ImportDataEvent {
  const ImportDataSubmittedEvent({
    required this.dateCreatedAtValue,
    this.noteValue,
    required this.priceValue,
    required this.categoryValue,
  });

  final String dateCreatedAtValue;
  final String? noteValue;
  final String priceValue;
  final String categoryValue;

  @override
  List<Object> get props => [dateCreatedAtValue, noteValue!, priceValue, categoryValue];
}
