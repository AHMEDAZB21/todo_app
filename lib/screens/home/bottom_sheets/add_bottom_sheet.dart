import 'package:flutter/material.dart';
import 'package:todo_app/utils/app_colors.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({super.key});

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add New Task",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 16.0,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Enter Your Task Title",
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter Your Task description",
            ),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Text(
            "Select Time",
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 22.0,
          ),
          InkWell(
            onTap: () {
              showMyDatePicker();
            },
            child: Text(
              "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.hintColor,
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.done,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }

  void showMyDatePicker() async {
    selectedDate = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365))) ??
        selectedDate;
    setState(() {});
  }
}
