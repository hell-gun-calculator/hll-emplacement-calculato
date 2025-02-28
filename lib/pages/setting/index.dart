import 'package:flutter/material.dart';

import 'package:flutter_i18n/flutter_i18n.dart';

import '/constants/api.dart';
import '/utils/index.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  UrlUtil urlUtil = UrlUtil();

  /// 打开计算配置
  void _openCalculatingFunctionConfig() {
    urlUtil.opEnPage(context, "/calculatingFunctionConfig");
  }

  /// 包管理
  void _openMapPackage() {
    urlUtil.opEnPage(context, "/setting/mapPackage");
  }

  /// 清理
  void _openDestock() {
    urlUtil.opEnPage(context, "/setting/destock");
  }

  /// 首页面板配置
  void _openHomeAppConfig() {
    urlUtil.opEnPage(context, "/setting/homeAppConfig");
  }

  /// 重置引导
  void _openGuide() {
    urlUtil.opEnPage(context, "/guide");
  }

  /// 网络
  void _openAppNetwork() {
    urlUtil.opEnPage(context, "/setting/appNetwork");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FlutterI18n.translate(context, "setting.title")),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.cell.calculatingFunctionConfig.title")),
            subtitle: Text(FlutterI18n.translate(context, "setting.cell.calculatingFunctionConfig.describe")),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _openCalculatingFunctionConfig(),
          ),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.cell.mapConfig.title")),
            subtitle: Text(FlutterI18n.translate(context, "setting.cell.mapConfig.describe")),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _openMapPackage(),
          ),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.cell.homeAppConfig.title")),
            subtitle: Text(FlutterI18n.translate(context, "setting.cell.homeAppConfig.describe")),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _openHomeAppConfig(),
          ),
          const Divider(),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.cell.guide.title")),
            subtitle: Text(FlutterI18n.translate(context, "setting.cell.guide.describe")),
            trailing: const Icon(Icons.open_in_new),
            onTap: () => _openGuide(),
          ),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.cell.appNetwork.title")),
            subtitle: Text(FlutterI18n.translate(context, "setting.cell.appNetwork.describe")),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _openAppNetwork(),
          ),
          ListTile(
            title: const Text("语言"),
            onTap: () => urlUtil.opEnPage(context, "/language"),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.theme.title")),
            onTap: () => urlUtil.opEnPage(context, "/theme"),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.destock.title")),
            onTap: () => _openDestock(),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.cell.license.title")),
            subtitle: Text(FlutterI18n.translate(context, "setting.cell.license.describe")),
            onTap: () => urlUtil.opEnPage(context, "/license"),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.cell.appWebsite.title")),
            onTap: () => urlUtil.onPeUrl(Config.apis["app_web_site"]!.url),
            trailing: const Icon(Icons.open_in_new),
          ),
          ListTile(
            title: Text(FlutterI18n.translate(context, "setting.cell.privacy.title")),
            onTap: () => urlUtil.onPeUrl("${Config.apis["app_web_site"]!.url}/docs/privacy/"),
            trailing: const Icon(Icons.open_in_new),
          ),
        ],
      ),
    );
  }
}
