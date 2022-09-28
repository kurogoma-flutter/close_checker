import 'package:flutter/material.dart';

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
          children: const <Widget>[
            InquiryTitleDropdown(),
            InquiryContentForm(),
            InquirySendButton(),
          ],
        ),
      ),
    );
  }
}

/// お問合せタイトルを選択するためのドロップダウンメニュー
class InquiryTitleDropdown extends StatelessWidget {
  const InquiryTitleDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: '選択してください',
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {},
      items: <String>['選択してください', 'アプリ全般', '機能追加要望', '機能改善要望', 'その他']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

/// お問合せ内容を入力するフォーム
class InquiryContentForm extends StatelessWidget {
  const InquiryContentForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'お問合せ内容を入力してください',
      ),
      maxLines: 10,
    );
  }
}

/// お問合せ返信先メールアドレスを入力するフォーム
class InquiryEmailForm extends StatelessWidget {
  const InquiryEmailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'メールアドレスを入力してください',
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
      child: const Text('送信'),
    );
  }
}
