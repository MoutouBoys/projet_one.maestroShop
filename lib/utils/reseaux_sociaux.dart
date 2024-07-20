import 'package:flutter/material.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcons extends StatelessWidget {
  final List<_SocialMediaIconData> icons = [
    _SocialMediaIconData(
        icon: Icons.facebook, url: 'https://www.facebook.com/yourPage'),
    _SocialMediaIconData(icon: Icons.whatsapp, url: 'https://wa.me/yourNumber'),
    _SocialMediaIconData(
        icon: Icons.camera_alt, url: 'https://www.instagram.com/yourProfile'),
    _SocialMediaIconData(
        icon: Icons.music_note, url: 'https://www.tiktok.com/@yourProfile'),
  ];

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: icons.map((iconData) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => _launchUrl(iconData.url),
            child: MouseRegion(
              onEnter: (_) => print('Hovered'), // Handle animation on hover
              onExit: (_) => print('Unhovered'), // Handle animation on exit
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsPers.colorBlueDefault,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Icon(
                  iconData.icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _SocialMediaIconData {
  final IconData icon;
  final String url;

  _SocialMediaIconData({required this.icon, required this.url});
}
