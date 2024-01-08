import 'package:flutter/material.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';

class WithKeyTextWidget extends StatelessWidget {
  const WithKeyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Bağlantı Adresi İle',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 6),
            Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: kDisabledColor, width: 2),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    'i',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                )),
          ],
        ),
        Text(
          'Bağlantı adresine ilişkin küçük bir not eklenecek, bağlantı adresi nedir. İki satırı geçmemeli.',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(),
        ),
        const SizedBox(height: 6),
        Text(
          'Bağlantı adresimi bilmiyorum',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: kDontColor),
        )
      ],
    );
  }
}
