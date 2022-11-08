import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 問い合わせフォーム
class InquiryPage extends StatelessWidget {
  const InquiryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お問合せ'),
        backgroundColor: const Color.fromARGB(255, 202, 248, 255),
      ),
      body: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            InquiryTitleDropdown(),
            InquiryContentForm(),
            InquirySendButton(),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

/// お問合せタイトルを選択するためのドロップダウンメニュー
class InquiryTitleDropdown extends HookWidget {
  const InquiryTitleDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> inquiryTitleList = [
      '選択してください',
      '不具合について',
      '改善要望について',
      'アプリについての質問',
      'その他',
    ];
    final inquiryTitle = useState(inquiryTitleList[0]);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButton<String>(
        value: inquiryTitle.value,
        dropdownColor: Colors.white.withOpacity(0.8),
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 10,
        style: const TextStyle(color: Colors.black87),
        onChanged: (String? newValue) {
          if (newValue != null) {
            inquiryTitle.value = newValue;
          }
        },
        items: inquiryTitleList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

/// お問合せ内容を入力するフォーム
class InquiryContentForm extends StatelessWidget {
  const InquiryContentForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          decoration: const InputDecoration(
            hintText: 'お問合せ内容を入力してください',
            border: InputBorder.none,
          ),
          maxLines: 10,
        ),
      ),
    );
  }
}

/// お問合せ送信ボタン
class InquirySendButton extends StatelessWidget {
  const InquirySendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          '送 信',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
