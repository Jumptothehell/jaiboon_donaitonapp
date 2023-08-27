import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  static const routeName = 'login_page';
  static const fullPath = '/$routeName';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log In Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.notoSansThai().fontFamily,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xff1BC28E),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            minimumSize: const Size(140, 34),
            textStyle: TextStyle(
              fontFamily: GoogleFonts.notoSansThai().fontFamily,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      home: const LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _loginKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            //background container
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff1BC28E), Color(0xff8FE1A1)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset(
                    'assets/img/logo.png',
                    width: 300,
                    height: 95,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 28,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0x90FFFFFF),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 200,
                                  margin: const EdgeInsets.only(
                                      top: 30, bottom: 10),
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide.none,
                                      left: BorderSide.none,
                                      right: BorderSide.none,
                                      bottom: BorderSide(width: 1),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text('เข้าสู่ระบบ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Expanded(
                                        child: Form(
                                          key: _loginKey,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                                controller: usernameController,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: '',
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10.0),
                                                  prefixIcon: Icon(
                                                    Icons.account_circle,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                // validator: (value) {
                                                //   if (value == null ||
                                                //       value.isEmpty) {
                                                //     return 'กรุณาใส่ข้อมูล';
                                                //   }
                                                //   return null;
                                                // },
                                              ),
                                              TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                                controller: passwordController,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: '',
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10.0),
                                                  prefixIcon: Icon(
                                                    Icons.lock,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    child: Text(
                                                      'สมัครบัญชีผู้ใช้',
                                                      style: GoogleFonts
                                                          .notoSansThai(
                                                        textStyle: const TextStyle(
                                                            color: Color(
                                                                0xff54855F),
                                                            decoration:
                                                                TextDecoration
                                                                    .underline),
                                                      ),
                                                    ),
                                                    //ไปหน้า register
                                                    onTap: () =>
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                      const SnackBar(
                                                        content: Text('สมัคร'),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    child: Text(
                                                      'ลืมรหัสผ่าน',
                                                      style: GoogleFonts
                                                          .notoSansThai(
                                                        textStyle: const TextStyle(
                                                            color: Color(
                                                                0xff54855F),
                                                            decoration:
                                                                TextDecoration
                                                                    .underline),
                                                      ),
                                                    ),
                                                    //ไปหน้า register
                                                    onTap: () =>
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                      const SnackBar(
                                                        content:
                                                            Text('ลืมรหัสผ่าน'),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  if (_loginKey.currentState!
                                                      .validate()) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                        content:
                                                            Text('ล็อกอิน'),
                                                      ),
                                                    );
                                                  }
                                                },
                                                child:
                                                    const Text('เข้าสู่ระบบ'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 180,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
