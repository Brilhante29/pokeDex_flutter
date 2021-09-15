import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/model/cupertino_list_tile.dart';
import 'package:project/model/user_model.dart';
import 'package:project/model/data_image_asset.dart';

import 'get_connect_controller.dart';

class GetConnectPage extends GetView<GetConnectController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            'Your Pokemons',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Monoton',
                fontStyle: FontStyle.italic,
                color: CupertinoColors.systemRed),
          ),
          backgroundColor: Colors.black,
        ),
        child: Container(
          child: controller.obx((state) {
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (ctx, index) {
                final UserModel item = state[index];
                return Column(
                  children: [
                    CupertinoListTile(
                      trailing: Padding(
                        padding: EdgeInsets.all(2),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          child: Image.network('${item.avatar}'),
                        ),
                      ),
                      key: key,
                      title: item.name,
                      subtitle: '${DUMMY_DATA[index]}',
                    ),
                  ],
                );
              },
            );
          }, onError: (error) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(error!),
                  CupertinoButton(
                    onPressed: () => controller.findUsers(),
                    child: Text(
                      'Tentar novamente',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
