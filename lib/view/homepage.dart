import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../product/components/appbar/appbar_pp_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String image_url = "https://avatars.githubusercontent.com/u/63578350?v=4";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cached Image Demo'),
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: customProfilePhoto(image_url),
        ),
        actions: [
          IconButton(
              onPressed: () => DefaultCacheManager().removeFile(image_url), icon: const Icon(Icons.leave_bags_at_home))
        ],
      ),
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
