/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-12 23:19:55
 * @FilePath: /phoenix_scroll_anchor/example/lib/scroll_actor_tab_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:phoenix_scroll_anchor/phoenix_scroll_anchor.dart';
import 'package:phoenix_tabbar/phoenix_tabbar.dart';

class ScrollActorTabExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('锚点'),
      ),
      body: AnchorTab(
        itemCount: 20,
        widgetIndexedBuilder: (context, index) {
          return StatefulBuilder(builder: (_, state) {
            double height = Random().nextInt(400).toDouble();
            return GestureDetector(
              child: Container(
                height: height,
                color: Color.fromARGB(
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255)),
                child: Center(child: Text('$index')),
              ),
              onTap: () {
                state(() {});
              },
            );
          });
        },
        tabIndexedBuilder: (context, index) {
          return BadgeTab(text: 'index $index');
        },
      ),
    );
  }
}
