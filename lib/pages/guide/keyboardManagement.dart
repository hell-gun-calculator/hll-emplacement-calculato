import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:hll_gun_calculator/component/_keyboard/index.dart';

class GuideKeyboardManagement extends StatefulWidget {
  const GuideKeyboardManagement({super.key});

  @override
  State<GuideKeyboardManagement> createState() => _GuideKeyboardManagementState();
}

class _GuideKeyboardManagementState extends State<GuideKeyboardManagement> {
  TextEditingController controller = TextEditingController(text: "0");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const ListTile(
            title: Text(
              "键盘",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            subtitle: Text("对于计算输入，应用提供内置几款输入控制器,能在控制器左下角找到设置按钮切换，同时会记住你在对应位置选择键盘，在下次加载时保持"),
          ),
          const Divider(height: 1),
          Expanded(
            flex: 1,
            child: Container(
              color: Theme.of(context).colorScheme.primary.withOpacity(.2),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: controller,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25
                      ),
                      decoration: const InputDecoration.collapsed(hintText: "test"),
                    ),
                    Text("点击左下方设置图标切换体验")
                  ],
                ),
              ),
            ),
          ),
          KeyboardWidget(
            onSubmit: () => null,
            controller: controller,
            initializePackup: true,
            spatialName: "test",
          ),
        ],
      ),
    );
  }
}
