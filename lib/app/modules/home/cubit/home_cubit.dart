import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          const HomeState(HomeTab.importData, 0),
        );

  void setTab(HomeTab tab) {
    switch (tab) {
      case HomeTab.importData:
        emit(
          const HomeState(HomeTab.importData, 0),
        );
        break;
      case HomeTab.calendar:
        emit(
          const HomeState(HomeTab.report, 1),
        );
        break;
      case HomeTab.report:
        emit(
          const HomeState(HomeTab.report, 2),
        );
        break;
      case HomeTab.setting:
        emit(
          const HomeState(HomeTab.setting, 3),
        );
        break;
    }
  }
}
