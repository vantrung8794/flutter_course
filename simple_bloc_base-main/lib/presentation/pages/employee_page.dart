import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:simple_bloc_base/constants/style_constants.dart';
import 'package:simple_bloc_base/constants/text_constants.dart';
import 'package:simple_bloc_base/constants/ui_constants.dart';

import '../../blocs/blocs.dart';
import '../widgets/widgets.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold<EmployeeBloc>(
      loadData: (bloc) => bloc?.add(GetEmployeesEvent()),
      title: const Text('Employee List'),
      body: const BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: _employeeListener,
      builder: (context, state) {
        final employees = state.employees;
        return Column(
          children: [
            Text(TextConst.hello.tr()),
            UIConst.verticalSpace12,
            TextField(
              decoration: InputDecoration(hintText: TextConst.enterNumber.tr()),
              style: StyleConst.size16,
            ),
            UIConst.verticalSpace12,
            ElevatedButton(
                onPressed: () {
                  final isEnglish = LocaleHelper.instance.isEnglish(context);
                  LocaleHelper.instance.setDefaultLocale(context,
                      localeString: isEnglish
                          ? LocaleConstants.japanese
                          : LocaleConstants.english);
                },
                child: const Text('Change language')),
            const ElevatedButton(onPressed: null, child: Text('Diable Button')),
            Expanded(
              child: ListView.builder(
                itemCount: employees?.length ?? 0,
                itemBuilder: (context, index) {
                  final item = employees?[index];
                  return EmployeeItem(item: item);
                },
              ),
            ),
          ],
        );
      },
    );
  }

  void _employeeListener(context, state) {
    if (state.isLoading) {
      UIHelper.showLoading();
    } else {
      UIHelper.hideLoading();
    }
    if (state.errMessage != null) {
      UIHelper.showSnackBar(context, msg: state.errMessage);
    }
  }
}
