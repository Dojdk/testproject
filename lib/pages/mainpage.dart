import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/widgets/appbar.dart';
import 'package:testproject/widgets/bottombar.dart';

import '../providers/user.dart';
import 'package:testproject/widgets/bottomsheet.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late final userProvider = Provider.of<UserProvider>(context, listen: false);
  late final users = userProvider.users;
  final controller = DraggableScrollableController();

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: PageView.builder(
                onPageChanged: (value) {
                  controller.animateTo(0.25,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                  setState(() {
                    _index = value;
                  });
                },
                itemBuilder: (context, index) => Image.network(
                  users[index].image,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
                itemCount: users.length,
              ),
            ),
            const CustomAppBar(),
            CustomBottomSheet(
              controller: controller,
              user: users[_index],
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomBar());
  }
}
