import 'package:flutter/material.dart';
import 'package:plantshop/page/homepage.dart';
import 'package:plantshop/page/loginpage.dart';
import 'package:plantshop/utils/button.dart';
import 'package:plantshop/utils/global.dart';
import 'package:plantshop/widget/formfield_widget.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _ischeckPass = true;
  @override
  Widget build(BuildContext context) {
    void _onToggePass() {
      setState(() {
        _ischeckPass = !_ischeckPass;
      });
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // lightGreen.withOpacity(0.4),
                // lightGreen.withOpacity(0.6),
                // lightGreen.withOpacity(0.8),
                // lightGreen,
                kmeloncolor.withOpacity(0.4),
                kmeloncolor.withOpacity(0.6),
                kmeloncolor.withOpacity(0.8),
                kmeloncolor.withOpacity(1),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 120.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                //_buildEmailTF(),
                CustomTextField(
                  lable: 'Email',
                  preicon: Icon(
                    Icons.email,
                    color: white,
                  ),
                  obstype: false,
                  hintext: 'Enter your Email',
                ),
                SizedBox(
                  height: 30.0,
                ),
                CustomTextField(
                  lable: 'Password',
                  preicon: Icon(
                    Icons.lock,
                    color: white,
                  ),
                  suficon: IconButton(
                    icon: Icon(
                        _ischeckPass ? Icons.visibility_off : Icons.visibility),
                    onPressed: _onToggePass,
                  ),
                  obstype: _ischeckPass,
                  hintext: 'Enter your Password',
                ),
                SizedBox(height: 50),
                CustomButton(
                  text: 'Register',
                  onPress: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  ),
                ),

                GestureDetector(
                  onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Have an Account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
