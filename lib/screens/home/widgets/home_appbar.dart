import 'package:flutter/material.dart';
import 'package:flutter_login/theme.dart';
import 'package:flutter_login/widgets.dart';

import '../../../constant.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  HomeAppBar({Key? key}) : super(key: key);

  final title = Center(
    child: Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
          child: Hero(
            tag: Constants.logo_tag,
            child: Icon(
              Icons.home,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
        HeroText(
          'Home',
          smallFontSize: 30,
          tag: Constants.title_tag,
          viewState: ViewState.shrunk,
          style: LoginThemeHelper.loginTextStyle,
        ),
        const SizedBox(width: 20),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        backgroundColor: Colors.white,
        elevation: 2,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'logout',
                child: Text('Logout'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
