import 'package:chat_app/Pages/Auth/Widgets/LoginForm.dart';
import 'package:chat_app/Pages/Auth/Widgets/SignupForm.dart';
//import 'package:chat_app/Pages/Welcome/Auth/Widgets/LoginForm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthPageBody extends StatelessWidget {
  const AuthPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;
    return Container(
      padding: EdgeInsets.all(20),
     //  height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          isLogin.value = true;
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          child: Column(
                            children: [
                              Text(
                                "Login",
                                style: isLogin.value
                                    ? Theme.of(context).textTheme.bodyLarge
                                    : Theme.of(context).textTheme.labelLarge,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                width: isLogin.value ? 100 : 0,
                                height: 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          isLogin.value = false;
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          child: Column(
                            children: [
                              Text(
                                "SignUP",
                                style: isLogin.value
                                    ? Theme.of(context).textTheme.labelLarge
                                    : Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                width: isLogin.value ? 0 : 100,
                                height: 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //show login && signup form
                Obx( () => isLogin.value ? LoginForm() : SignUpForm() ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
