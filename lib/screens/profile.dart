import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 80,
                backgroundImage:
                    NetworkImage('https://picsum.photos/250?image=9'),
                // backgroundImage: AssetImage('assets/images/profile.jpeg'), // Replace with your image path
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/profile.jpeg',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              CachedNetworkImage(
                imageUrl: 'https://picsum.photos/250?image=9',
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              const SizedBox(height: 20),
              Text(
                'John Doe',
                // style: TextStyle(
                //   fontFamily: 'Roboto',
                //   fontSize: 24,
                //   fontWeight: FontWeight.bold,
                //   fontStyle: FontStyle.italic,
                // ),
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 10),
              const Text('Software Engineer'),
              const SizedBox(height: 20), // Add spacing at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
