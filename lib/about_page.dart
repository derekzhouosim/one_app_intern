import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OSIM"),
      ),
      body: SafeArea(
        child: _buildColumn(),
      ),
    );
  }

  Widget _buildColumn() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          _buildIcon(),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Text(
              "OneApp",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Version 1.0",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Divider(thickness: 1.5),
          ),
          Spacer(),
          _buildViewCreditsButton(),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: Color(0xffc4c3c4),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }

  Widget _buildViewCreditsButton() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          "View Credits",
          style: TextStyle(color: Colors.black),
        ),
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14)),
          side: MaterialStateProperty.all(
            BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
      ),
    );
  }
}
