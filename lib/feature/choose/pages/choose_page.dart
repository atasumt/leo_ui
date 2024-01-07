import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/feature/choose/button/choose_page_button.dart';
import 'package:lio_ui_example/feature/choose/enums/choose_status_enum.dart';
import 'package:lio_ui_example/feature/choose/widgets/with_key_widget.dart';

class ChoosePage extends HookConsumerWidget {
  ChoosePage({super.key});

  final List<Map<String, String>> dataList = [
    {'index': '0', 'url': 'key', 'title': 'Bağlantı Anahtarı İle', 'body': 'Basit ayarlara ilişkin küçük bir not eklenecek'},
    {'index': '1', 'url': 'link', 'title': 'Bağlantı Adresi İle', 'body': 'Gelişmiş ayarlara ilişkin küçük bir not eklenecek'},
    {'index': '2', 'url': 'qr', 'title': 'QR Kod İle', 'body': 'QR Kod ile girişi açıklayan küçük bir not eklenecek'},
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chooseIndex = useState(-1);

    return Padding(
      padding: const EdgeInsets.only(
        left: kDefaultBiggerPadding,
        right: kDefaultBiggerPadding,
        top: kDefaultBiggerPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Uygulama giriş tercihinizi seçiniz',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Column(
              children: dataList
                  .map(
                    (data) => GestureDetector(
                        onTap: () {
                          chooseIndex.value = int.parse(data['index'].toString());
                        },
                        child: WithKeyWidget(
                          title: data['title'],
                          body: data['body'],
                          url: data['url'],
                          index: chooseIndex.value,
                        )),
                  )
                  .toList(),
            ),
            const SizedBox(height: kFieldDefaultPadding),
            ChoosePageButton(
                chooseStatusEnum: chooseIndex.value == 0
                    ? ChooseStatusEnum.chooseKey
                    : chooseIndex.value == 1
                        ? ChooseStatusEnum.chooseLink
                        : chooseIndex.value == 2
                            ? ChooseStatusEnum.chooseQr
                            : ChooseStatusEnum.noChoose),
            const SizedBox(height: kFieldDefaultPadding),
          ],
        ),
      ),
    );
  }
}
