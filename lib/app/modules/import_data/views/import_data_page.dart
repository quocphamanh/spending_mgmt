import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spending_mgmt/app/modules/import_data/bloc/import_data_bloc.dart';

class ImportDataPage extends StatelessWidget {
  const ImportDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImportDataBloc(),
      child: const ImportDataView(),
    );
  }
}

class ImportDataView extends StatelessWidget {
  const ImportDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Import Data'),
        centerTitle: true,
      ),
      body: BlocBuilder<ImportDataBloc, ImportDataState>(
        builder: (context, state) {
          return const Center(
            child: Text('Import Data'),
          );
        },
      ),
    );
  }
}
