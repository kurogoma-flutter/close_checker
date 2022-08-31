import 'package:close_checker/presentation/pages/setting/component/legal_text_widget.dart';
import 'package:flutter/material.dart';

class AppTermPage extends StatelessWidget {
  const AppTermPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('利用規約'),
        backgroundColor: const Color.fromARGB(255, 202, 248, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            LegalSubTitle(text: '第1条（適用）'),
            LegalText(
              text:
                  'この利用規約（以下，「本規約」といいます。）は，株式会社〇〇（以下，「当社」といいます。）がこのウェブサイト上で提供するサービス（以下，「本サービス」といいます。）の利用条件を定めるものです。登録ユーザーの皆さま（以下，「ユーザー」といいます。）には，本規約に従って，本サービスをご利用いただきます。',
            ),
            LegalSubTitle(text: '第2条（利用登録）'),
            LegalText(
              text:
                  '本サービスにおいては，登録希望者が当社の定める方法によって利用登録を申請し，当社がこれを承認することによって，利用登録が完了するものとします。',
            ),
            LegalSubTitle(text: '第3条（ユーザーIDおよびパスワードの管理）'),
            LegalText(
              text: 'ユーザーは，自己の責任において，本サービスのユーザーIDおよびパスワードを管理するものとします。',
            ),
            LegalSubTitle(text: '第4条（禁止事項）'),
            LegalText(
              text: 'ユーザーは，本サービスの利用にあたって，以下の行為をしてはならないものとします。',
            ),
            LegalText(
              text: '法令または公序良俗に違反する行為または犯罪行為に関連する行為',
            ),
            LegalText(
              text: '当社、本サービスの他のユーザー、または第三者の財産、名誉、プライバシー、その他の権利または利益を侵害する行為',
            ),
            LegalText(
              text: '当社、本サービスの他のユーザー、または第三者に成りすます行為',
            ),
            LegalText(
              text: '本サービスによって得られた情報を商業的に利用する行為',
            ),
            LegalText(
              text: '当社のサービスの運営を妨害するおそれのある行為',
            ),
            LegalText(
              text: '不正アクセスをし、またはこれを試みる行為',
            ),
            LegalText(
              text: '他のユーザーに成りすます行為',
            ),
            LegalText(
              text: '当社が定める情報の記載事項を虚偽の事実により記載する行為',
            ),
            LegalText(
              text: 'その他，当社が不適切と判断する行為',
            ),
            LegalSubTitle(text: '第5条（本サービスの提供の停止等）'),
            LegalText(
              text:
                  '当社は，以下のいずれかの事由がある場合，ユーザーに事前に通知することなく，本サービスの全部または一部の提供を停止または中断することができるものとします。',
            ),
            LegalText(
              text: '本サービスにかかるコンピューターのシステムの保守点検または更新を行う場合',
            ),
            LegalText(
              text: 'コンピューター、通信回線等が事故により停止した場合',
            ),
            LegalText(
              text: 'その他，当社が本サービスの提供が困難と判断した場合',
            ),
            LegalText(
              text:
                  '当社は，本サービスの提供の停止または中断によりユーザーまたは第三者が被った損害について一切の責任を負わないものとします。',
            ),
            LegalSubTitle(text: '第6条（利用制限および登録抹消）'),
            LegalText(
              text:
                  '当社は，以下の場合には，事前に通知することなく，ユーザーについて本サービスの全部または一部の利用を制限し，またはユーザーとしての登録を抹消することができるものとします。',
            ),
            LegalText(
              text: '本規約のいずれかの条項に違反した場合',
            ),
            LegalText(
              text: '登録事項に虚偽の事実があることが判明した場合',
            ),
            LegalText(
              text: '料金等の支払債務の不履行があった場合',
            ),
            LegalText(
              text: '当社からの連絡に対し，一定期間返答がない場合',
            ),
            LegalText(
              text: '本サービスについて，最終の利用から一定期間利用がない場合',
            ),
            LegalText(
              text: 'その他，当社が本サービスの利用を適当でないと判断した場合',
            ),
            LegalText(
              text: '当社は，本条に基づき当社が行った行為によりユーザーに生じた損害について一切の責任を負わないものとします。',
            ),
            LegalSubTitle(text: '第7条（退会）'),
            LegalText(
              text: 'ユーザーは，当社の定める退会手続により，本サービスから退会できるものとします。',
            ),
            LegalSubTitle(text: '第8条（保証の否認および免責事項）'),
            LegalText(
              text:
                  '当社は，本サービスに関して，ユーザーについて，本サービスの利用により取得する情報について，その正確性および有用性について，何ら保証するものではありません。',
            ),
            LegalText(
              text:
                  '当社は，本サービスに関して，ユーザーについて，本サービスの利用により直接的または間接的に生じた損害について，一切の責任を負わないものとします。この場合，当社が故意または重過失の有無にかかわらず，当社の過失による場合を除きます。',
            ),
          ],
        ),
      ),
    );
  }
}
