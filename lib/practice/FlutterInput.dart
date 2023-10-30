import 'package:flutter/material.dart';

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
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '체크박스',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TestCheckBox(),
            SizedBox(height: 30),
            Text(
              '라디오 버튼',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TestRadioButton(),
            SizedBox(height: 30),
            Text(
              '슬라이더',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TestSlider(),
            SizedBox(height: 30),
          ],
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

enum TestRadioValue {
  test1,
  test2,
  test3;
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestRadioValue? selectValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestRadioValue>(
            value: TestRadioValue.test1,
            groupValue: selectValue,
            onChanged: (value) => setState(
              () => selectValue = value!,
            ),
          ),
          title: Text(TestRadioValue.test1.name),
          onTap: () => setState(() {
            if (selectValue != TestRadioValue.test1) {
              selectValue = TestRadioValue.test1;
            }
          }),
        ),
        Radio<TestRadioValue>(
          value: TestRadioValue.test2,
          groupValue: selectValue,
          onChanged: (value) => setState(
            () => selectValue = value!,
          ),
        ),
        Radio<TestRadioValue>(
          value: TestRadioValue.test3,
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
