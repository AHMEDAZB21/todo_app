import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/drawer.dart';
import 'package:todo_app/screens/home/tabs/list_tap/list_tap.dart';
import 'package:todo_app/screens/home/tabs/settings/settings_tap.dart';
import 'package:todo_app/utils/app_colors.dart';

import 'bottom_sheets/add_bottom_sheet.dart';

class Home extends StatefulWidget {
  static String routeName = "home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text(
          "To Do List",
        ),
        toolbarHeight: MediaQuery.of(context).size.height * .16,
      ),
      body: currentTap == 0 ? const ListTap() : const SettingsTap(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddBottomSheet();
        },
        shape: const StadiumBorder(
          side: BorderSide(
            color: AppColors.white,
            width: 4,
          ),
        ),
        backgroundColor: AppColors.primiaryColor,
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.hardEdge,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: BottomNavigationBar(
          onTap: (index) {
            currentTap = index;
            setState(() {});
          },
          currentIndex: currentTap,
          items: const [
            BottomNavigationBarItem(
              label: "list",
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              label: "settings",
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }

  void showAddBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => const AddBottomSheet());
  }
}
