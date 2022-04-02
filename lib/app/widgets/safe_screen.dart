import 'package:flutter/material.dart';

import '../../core/extensions/number.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/gradients.dart';

class SafeScreen extends StatelessWidget {
  const SafeScreen({Key? key, required this.child, this.title})
      : super(key: key);
  final Widget child;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(gradient: grayIn),
        child: SafeArea(
          child: Center(
            child: Container(
                child: title != null
                    ? Column(
                        children: [
                          SizedBox(
                            width: 90.0.wp,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                title!,
                                style: const TextStyle(
                                  fontSize: 28,
                                  color: primary,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: child)
                        ],
                      )
                    : child),
          ),
        ),
      ),
    );
  }
}
