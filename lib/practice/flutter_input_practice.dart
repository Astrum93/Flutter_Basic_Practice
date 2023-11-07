import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class FlutterInputExample extends StatefulWidget {
  const FlutterInputExample({super.key});

  @override
  State<FlutterInputExample> createState() => _FlutterInputExampleState();
}

enum Values {
  value1,
  value2,
  value3;
}

enum PopupMenuValues {
  pvalue1,
  pvalue2,
  pvalue3;
}

class _FlutterInputExampleState extends State<FlutterInputExample> {
  bool isChecked = false;
  Values? selectValue1;
  double value1 = 0;
  bool value = false;
  PopupMenuValues selectPValue = PopupMenuValues.pvalue1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 30),
              Divider(),
              const Text(
                '체크박스',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Checkbox(
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue!;
                  });
                },
                activeColor: Colors.green,
                checkColor: Colors.white,
              ),
              const SizedBox(height: 30),
              Divider(),
              const Text(
                '체크박스 리스트타일',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              CheckboxListTile(
                title: const Text(
                  '천천히 천천히 체크!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                value: timeDilation != 1.0,
                onChanged: (bool? value) {
                  setState(() {
                    timeDilation = value! ? 10.0 : 1.0;
                  });
                },
                secondary: const Icon(Icons.hourglass_empty),
                activeColor: Colors.green,
                checkColor: Colors.white,
              ),
              const SizedBox(height: 30),
              Divider(),
              const SizedBox(height: 30),
              const Text(
                '라디오 버튼 리스트타일',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              ListTile(
                leading: Radio<Values>(
                  value: Values.value1,
                  groupValue: selectValue1,
                  onChanged: (value) => setState(
                    () => selectValue1 = value!,
                  ),
                ),
                title: Text(Values.value1.name),
                onTap: () => setState(() {
                  if (selectValue1 != Values.value1) {
                    selectValue1 = Values.value1;
                  }
                }),
              ),
              Radio<Values>(
                value: Values.value2,
                groupValue: selectValue1,
                onChanged: (value) => setState(
                  () => selectValue1 = value!,
                ),
              ),
              Radio<Values>(
                value: Values.value3,
                groupValue: selectValue1,
                onChanged: (value) => setState(
                  () => selectValue1 = value!,
                ),
              ),
              const SizedBox(height: 30),
              Divider(),
              const SizedBox(height: 30),
              const Text(
                '슬라이더',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Text('$value1'),
              Slider(
                value: value1,
                onChanged: (newValue1) => setState(() => value1 = newValue1),
                divisions: 100,
                max: 100,
                min: 0,
                label: value1.round().toString(),
                activeColor: Colors.amber,
              ),
              const SizedBox(height: 30),
              Divider(),
              const SizedBox(height: 30),
              const Text(
                '스위치',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Switch(
                value: value,
                onChanged: (newValue) => setState(() => value = newValue),
              ),
              CupertinoSwitch(
                value: value,
                onChanged: (newValue) => setState(() => value = newValue),
              ),
              const SizedBox(height: 30),
              Divider(),
              const SizedBox(height: 30),
              const Text(
                '팝업 메뉴',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              PopupMenuButton(
                itemBuilder: (context) {
                  return PopupMenuValues.values
                      .map(
                        (value) => PopupMenuItem(
                          value: value,
                          child: Text(value.name),
                        ),
                      )
                      .toList();
                },
              ),
              const SizedBox(height: 30),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
