import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const SizedBox(height: 25),
          CachedNetworkImage( 
            imageUrl: 'https://e0.pxfuel.com/wallpapers/459/341/desktop-wallpaper-iphone-forest.jpg',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Text('Error loading image'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Text(
                'Create Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Sign up to start your Emerald Atlas journey!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Full Name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                  child: MaterialButton(
                    onPressed: () {
                      // Implement your sign up logic
                    },
                    minWidth: double.infinity,
                    height: 40.0,
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
