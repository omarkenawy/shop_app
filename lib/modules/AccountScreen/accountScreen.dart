import 'package:shop_app/global/widgets/homeScreen_appBar.dart';
import 'package:shop_app/index.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreen_AppBar(),
      body: Column(
        children: [
          const Column(
            children: [
              Center(child: SignInSameEmail()),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("sign Up");
                  },
                  child: Row(
                    children: [
                      Container(
                        child: const Icon(Icons.archive_rounded),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "orders",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("order track");
                  },
                  child: Row(
                    children: [
                      Container(
                        child: const Icon(Icons.location_on),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "Your Location",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("Payment Screen");
                  },
                  child: Row(
                    children: [
                      Container(
                        child: const Icon(Icons.payment),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "Payment Method",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("sign Up");
                  },
                  child: Row(
                    children: [
                      Container(
                          child: const Icon(Icons.workspace_premium_rounded)),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "Premium",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("sign Up");
                  },
                  child: Row(
                    children: [
                      Container(child: const Icon(Icons.work_history_sharp)),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "Whish List",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("sign Up");
                  },
                  child: Row(
                    children: [
                      Container(
                          child: const Icon(Icons.browse_gallery_outlined)),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "Browsing History",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("sign Up");
                  },
                  child: Row(
                    children: [
                      Container(
                          child: const Icon(
                              Icons.notification_important_outlined)),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "Notifications",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("sign Up");
                  },
                  child: Row(
                    children: [
                      Container(child: const Icon(Icons.settings)),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "Settings",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("sign Up");
                  },
                  child: Row(
                    children: [
                      Container(child: const Icon(Icons.help)),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: const Text(
                          "Help & feedback",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
