import 'package:flutter/material.dart';

import '../../../core/localizations/l10n/app_localizations.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.page_not_found_text),
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.this_page_does_not_exist),
      ),
    );
  }
}
