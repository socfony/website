import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('期待已久', style: Theme.of(context).textTheme.headline4),
                Text('Socfony 将会在 2022 年春季推出！',
                    style: Theme.of(context).textTheme.headline5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(CupertinoIcons.globe),
                      onPressed: () {
                        window.open(
                            'https://github.com/odroe/socfony', 'Socfony 仓库');
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              color: Colors.grey.shade100,
              child: Center(
                child: TextButton(
                  child: const Text('蜀ICP备2021021384号-1'),
                  onPressed: () {
                    window.open('https://beian.miit.gov.cn/', '查询备案');
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
