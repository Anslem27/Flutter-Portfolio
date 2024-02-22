import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/reusable/chip_container.dart';
import '../pages/mobile/mobile_homepage.dart';
import '../widgets/reusable/drawer_item.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const ChipContainer(
                  color: Colors.deepPurple,
                  text: "📌 Use web for full experience",
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 20,
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          right: MediaQuery.of(context).size.width / 20,
        ),
        child: _mobileBody(),
      ),
      drawer: _mobileDrawer(context),
    );
  }

  Drawer _mobileDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, size: 20),
                ),
              ),
              DrawerItem(
                title: "Home",
                onTap: () => Navigator.pop(context),
              ),
              DrawerItem(
                title: "DashBoard",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Switchpage(
                      route: '/dashboard',
                    ),
                  ),
                ),
              ),
              DrawerItem(
                title: "GuestBook",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Switchpage(
                      route: '/guestbook',
                    ),
                  ),
                ),
              ),
              DrawerItem(
                title: "About",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Switchpage(
                      route: '/about',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _mobileBody() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: MobileHomePage()),
      ],
    );
  }
}

//page transion for mobile

class Switchpage extends StatefulWidget {
  final String route;
  const Switchpage({super.key, required this.route});

  @override
  State<Switchpage> createState() => _SwitchpageState();
}

class _SwitchpageState extends State<Switchpage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () async {
        Navigator.pushReplacementNamed(context, widget.route);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Image.asset("assets/images/smear_loader.gif")),
      ),
    );
  }
}
