import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

ClipRRect customProfilePhoto(String url) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: CachedNetworkImage(
      imageUrl: url,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: CircularProgressIndicator(
          color: Colors.white,
          value: downloadProgress.progress,
        ),
      ),
    ),
  );
}
