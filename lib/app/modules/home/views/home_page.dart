import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_mgmt/app/modules/calendar/views/calendar_page.dart';
import 'package:spending_mgmt/app/modules/home/cubit/home_cubit.dart';
import 'package:spending_mgmt/app/modules/import_data/views/import_data_page.dart';
import 'package:spending_mgmt/app/modules/report/views/report_page.dart';
import 'package:spending_mgmt/app/modules/setting/views/setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.create,
                    color: Colors.amber,
                  ),
                  tooltip: 'Create',
                  label: 'Create'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.amber,
                  ),
                  tooltip: 'Calendar',
                  label: 'Calendar'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.assessment,
                    color: Colors.amber,
                  ),
                  tooltip: 'Assessment',
                  label: 'Assessment'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.amber,
                  ),
                  tooltip: 'Setting',
                  label: 'Setting'),
            ],
            onTap: (index) {
              if (index == 0) {
                context.read<HomeCubit>().setTab(HomeTab.importData);
              } else if (index == 1) {
                context.read<HomeCubit>().setTab(HomeTab.calendar);
              } else if (index == 2) {
                context.read<HomeCubit>().setTab(HomeTab.report);
              } else {
                context.read<HomeCubit>().setTab(HomeTab.setting);
              }
            },
          );
        },
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.tab == HomeTab.importData) {
            return const ImportDataPage();
          } else if (state.tab == HomeTab.calendar) {
            return const CalendarPage();
          } else if (state.tab == HomeTab.report) {
            return const ReportPage();
          } else {
            return const SettingPage();
          }
        },
      ),
    );
  }
}
