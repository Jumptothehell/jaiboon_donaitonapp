import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'สมัครบัญชีผู้ใช้',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pushNamed(context, '/'),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: const Color(0xff1BC28E),
        ),
        body: Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: const InputDecoration(
                      hintText: 'ชื่อ-นามสกุล / บริษัท',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: const InputDecoration(
                      hintText: 'เบอร์โทรศัพท์',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: const InputDecoration(
                      hintText: 'ที่อยู่',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: const InputDecoration(
                      hintText: 'อีเมลล์',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 1000,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(
                        (0xff656267),
                      )),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: const Icon(Icons.arrow_drop_down),
                        items: <String>['หน่วยงาน / บริษัท', 'ประชาชน']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          if (value is String) {
                            setState(() {
                              _selectedValue = value;
                            });
                          }
                        },
                        style: Theme.of(context).textTheme.bodyMedium,
                        hint: const Text('เลือกสถานะของคุณ'),
                        value: _selectedValue,
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: const InputDecoration(
                      hintText: 'รหัสผ่าน',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: const InputDecoration(
                      hintText: 'ยืนยันรหัสผ่าน',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: const Text('ยืนยัน'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 50,
            ),
          ],
        ));
  }
}
