import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/extension/media_quary_extension.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/gen/assets.gen.dart';

class WithKeyWidget extends ConsumerWidget {
  const WithKeyWidget({super.key, required this.title, required this.body, required this.url, required this.index});

  final String? title;
  final String? body;
  final String? url;
  final int? index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: kFieldDefaultPadding),
        Container(
          width: context.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: kCardColor,
            border: Border.all(
              color: index == 0 && url == 'key'
                  ? kPrimaryColor
                  : index == 1 && url == 'link'
                      ? kPrimaryColor
                      : index == 2 && url == 'qr'
                          ? kPrimaryColor
                          : kDisabledColor.withOpacity(0.2),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(kFieldDefaultPadding),
            child: Row(
              children: [
                url == 'key'
                    ? Assets.images.keyHome.image()
                    : url == 'link'
                        ? Assets.images.linkHome.image()
                        : Assets.images.qrHome.image(),
                const SizedBox(width: kFieldInnerPadding),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$title',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$body',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
