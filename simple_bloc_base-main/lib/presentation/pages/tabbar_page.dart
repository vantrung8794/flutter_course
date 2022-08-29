import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart' as core;
import 'package:simple_bloc_base/constants/constants.dart';
import 'package:simple_bloc_base/presentation/pages/pages.dart';

class TabbarItemData {
  final int id;
  final String? title;
  final String? icon;

  TabbarItemData(this.id, {this.title, this.icon});
}

class MainTabbar extends StatefulWidget {
  MainTabbar({Key? key}) : super(key: key);

  @override
  State<MainTabbar> createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {
  final PageController controller = PageController();

  final tabbarData = [
    TabbarItemData(0, title: "Trang chủ"),
    TabbarItemData(1, title: "Yêu thích"),
    TabbarItemData(2, title: "Cá nhân"),
  ];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    // home page
    // favorite page.
    // final userPage =
    //     core.GetIt.I.get<UserPage>(instanceName: RouteConstants.user);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: PageView(
            controller: controller,
            children: <Widget>[
              const Center(
                child: Text('Trang chủ'),
              ),
              const Center(
                child: Text('Yêu thích'),
              ),
              UserPage()
            ],
          )),
          Container(
            height: 0.5,
            color: ColorConstants.black12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: tabbarData
                .map((e) => TabbarItem(
                      data: e,
                      isSelected: selectedTab == e.id,
                      onSelected: (id) {
                        setState(() {
                          selectedTab = id;
                        });
                        controller.animateToPage(id,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.ease);
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}

class TabbarItem extends StatelessWidget {
  const TabbarItem({
    Key? key,
    required this.data,
    this.isSelected = false,
    this.onSelected,
  }) : super(key: key);

  final TabbarItemData data;
  final bool isSelected;
  final Function(int)? onSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelected?.call(data.id);
      },
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          data.title ?? '',
          style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color:
                  isSelected ? ColorConstants.primary : ColorConstants.black),
        ),
      ),
    );
  }
}
