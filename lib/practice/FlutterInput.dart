import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('다양한 Flutter의 입력 알아보기'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '체크박스',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TestCheckBox(),
              SizedBox(height: 30),
              Text(
                '라디오 버튼',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TestRadioButton(),
              SizedBox(height: 30),
              Text(
                '슬라이더',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TestSlider(),
              SizedBox(height: 30),
              Text(
                '스위치',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TestSwitch(),
              SizedBox(height: 30),
              Text(
                '팝업 메뉴',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TestPopupMenu(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////

// 체크 박스
class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => chageValue(0, value: value)),
        Checkbox(
            value: values[1],
            onChanged: (value) => chageValue(1, value: value)),
        Checkbox(
            value: values[2],
            onChanged: (value) => chageValue(2, value: value)),
      ],
    );
  }

  void chageValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}



////////////////////////////////////////

// 라디오 버튼
class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestValue {
  test1,
  test2,
  test3;
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.test1,
            groupValue: selectValue,
            onChanged: (value) => setState(
              () => selectValue = value!,
            ),
          ),
          title: Text(TestValue.test1.name),
          onTap: () => setState(() {
            if (selectValue != TestValue.test1) {
              selectValue = TestValue.test1;
            }
          }),
        ),
        Radio<TestValue>(
          value: TestValue.test2,
          groupValue: selectValue,
          onChanged: (value) => setState(
            () => selectValue = value!,
          ),
        ),
        Radio<TestValue>(
          value: TestValue.test3,
          groupValue: selectValue,
          onChanged: (value) => setState(
            () => selectValue = value!,
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////

// 슬라이더
class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$value'),
        Slider(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
          divisions: 100,
          max: 100,
          min: 0,
          label: value.round().toString(),
          activeColor: Colors.amber,
        ),
      ],
    );
  }
}

////////////////////////////////////////

// 스위치
class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
        ),
        CupertinoSwitch(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
        ),
      ],
    );
  }
}

////////////////////////////////////////

// 팝업 메뉴
class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}

class _TestPopupMenuState extends State<TestPopupMenu> {
  TestValue selectValue = TestValue.test1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectValue.name),
        PopupMenuButton(
          itemBuilder: (context) {
            return TestValue.values
                .map((value) =>
                    PopupMenuItem(value: value, child: Text(value.name)))
                .toList();
          },
          onSelected: (newValue) => setState(() => selectValue = newValue),
        ),
      ],
    );
  }
}
