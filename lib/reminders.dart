/// Flutter code sample for CheckboxListTile

// ![Custom checkbox list tile sample](https://flutter.github.io/assets-for-api-docs/assets/material/checkbox_list_tile_custom.png)
//
// Here is an example of a custom LabeledCheckbox widget, but you can easily
// make your own configurable widget.

import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class ReminderList extends StatefulWidget {
  const ReminderList({Key? key}) : super(key: key);

  @override
  State<ReminderList> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<ReminderList> {
  final allChecked = CheckBoxModel(title: 'All Finished');

  final checkBoxListMorning = [
    CheckBoxModel(title: 'CheckBox 2'),
    CheckBoxModel(title: 'CheckBox 2'),
  ];
  final checkBoxListAfternoon = [
    CheckBoxModel(title: 'CheckBox 1'),
    CheckBoxModel(title: 'CheckBox 2'),
  ];
  final checkBoxListEvening = [
    CheckBoxModel(title: 'CheckBox 1'),
    CheckBoxModel(title: 'CheckBox 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Morning",
              style:
                  DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(),
          ...checkBoxListMorning
              .map((item) => ListTile(
                    onTap: () => onItemClicked(item, checkBoxListMorning),
                    leading: Checkbox(
                        value: item.value,
                        onChanged: (value) =>
                            onItemClicked(item, checkBoxListMorning)),
                    title: Text(item.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ))
              .toList(),
          Divider(),
          ListTile(
            title: Text(
              "Afternoon",
              style:
                  DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(),
          ...checkBoxListAfternoon
              .map((item) => ListTile(
                    onTap: () => onItemClicked(item, checkBoxListAfternoon),
                    leading: Checkbox(
                        value: item.value,
                        onChanged: (value) =>
                            onItemClicked(item, checkBoxListAfternoon)),
                    title: Text(item.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ))
              .toList(),
          Divider(),
          ListTile(
            title: Text(
              "Evening",
              style:
                  DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(),
          ...checkBoxListEvening
              .map((item) => ListTile(
                    onTap: () => onItemClicked(item, checkBoxListEvening),
                    leading: Checkbox(
                        value: item.value,
                        onChanged: (value) =>
                            onItemClicked(item, checkBoxListEvening)),
                    title: Text(item.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ))
              .toList(),
        ],
      ),
    ));
  }

  onAllClicked(CheckBoxModel ckbItem, List checkBoxList) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      checkBoxList.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onItemClicked(CheckBoxModel ckbItem, List checkBoxList) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      if (!newValue) {
        allChecked.value = false;
      } else {
        final allListChecked = checkBoxList.every((element) => element.value);
        allChecked.value = allListChecked;
      }
    });
  }
}

class CheckBoxModel {
  String title;
  bool value;

  CheckBoxModel({required this.title, this.value = false});
}
