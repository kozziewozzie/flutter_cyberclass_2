import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0x2C0E074D),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Colors.amber,
        ),
      ),
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.menu),
              ),
              title: const Text("Home Page"),
              centerTitle: true,
              backgroundColor: const Color(0xFFE5E5E5),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CreateUsersPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
            body: const Center(
              // TODO: chitayem pro RichText
              child: SelectableText(
                "Home Page sfjk sfh sjdhfkasdhfkjsdha fksdahfgdsajhgfsdhg",
                // softWrap: true,
                cursorColor: Color(0xFFE5E5E5),
                showCursor: true,
                textAlign: TextAlign.center,
                // TODO: uznat' kak sdelat' strutStyle
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 30,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CreateUsersPage extends StatelessWidget {
  const CreateUsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.menu),
        ),
        title: const Text("Create User"),
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E5E5),
      ),
      body: const Center(
        child: Text("Create Users Page"),
      ),
    );
  }
}
































// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) async {
//     print("Native called background task: $task");
//     return Future.value(true);
//   });
// }

// void main() {
//   Workmanager().initialize(
//     callbackDispatcher,
//     isInDebugMode: true,
//   );
//   Workmanager().registerOneOffTask("id", "task");
//   runApp(MainApp());
// }

// class MainApp extends StatelessWidget {
//   MainApp({super.key});
//   final GoRouter goRouter = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         pageBuilder: (context, state) => const HomePage(),
//       ),
//       GoRoute(
//         path: '/about',
//         pageBuilder: (context, state) => const AboutPage(),
//       ),
//       GoRoute(
//         path: '/contact',
//         pageBuilder: (context, state) => const ContactPage(),
//       ),
//       GoRoute(
//           path: '/splash', pageBuilder: (context, state) => const SplashPage()),
//     ],
//     initialLocation: '/splash',
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: goRouter,
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//     );
//   }
// }

// class HomePage extends Page {
//   const HomePage({super.key});

//   @override
//   Route createRoute(BuildContext context) {
//     return MaterialPageRoute(
//       settings: this,
//       builder: (context) => const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextButton(
//             child: const Text("about"),
//             onPressed: () => context.push('/about'),
//           ),
//           const Text("home"),
//         ],
//       ),
//     );
//   }
// }

// class AboutPage extends Page {
//   const AboutPage({super.key});

//   @override
//   Route createRoute(BuildContext context) {
//     return MaterialPageRoute(
//       settings: this,
//       builder: (context) => const AboutScreen(),
//     );
//   }
// }

// class AboutScreen extends StatelessWidget {
//   const AboutScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextButton(
//             child: const Text("contact"),
//             onPressed: () => context.push('/contact'),
//           ),
//           const Text("about"),
//         ],
//       ),
//     );
//   }
// }

// class ContactPage extends Page {
//   const ContactPage({super.key});

//   @override
//   Route createRoute(BuildContext context) {
//     return MaterialPageRoute(
//       settings: this,
//       builder: (context) => const ContactScreen(),
//     );
//   }
// }

// class ContactScreen extends StatelessWidget {
//   const ContactScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextButton(
//             child: const Text("home"),
//             onPressed: () => context.push('/'),
//           ),
//           const Text("contact"),
//         ],
//       ),
//     );
//   }
// }

// class SplashPage extends Page {
//   const SplashPage({super.key});

//   @override
//   Route createRoute(BuildContext context) {
//     return CupertinoPageRoute(
//       settings: this,
//       builder: (context) => const SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextButton(
//             child: const Text("home"),
//             onPressed: () => context.push('/'),
//           ),
//           const Text("splash"),
//         ],
//       ),
//     );
//   }
// }
