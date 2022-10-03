part of 'home_cubit.dart';

enum HomeTab { importData, calendar, report, setting }

class HomeState extends Equatable {
  const HomeState(this.tab, this.index);

  final HomeTab tab;
  final int index;

  @override
  List<Object> get props => [tab, index];
}