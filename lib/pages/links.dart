import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Links extends StatefulWidget {
  const Links({Key? key}) : super(key: key);

  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {
  final _linkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Links',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    // SizedBox(height: 50),
                    
                   const SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Links are important! ',
                          style: GoogleFonts.lato(
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          '(YouTube, Instagram, Pinterest or others)',
                          style: GoogleFonts.lato(
                            
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: _linkController,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Link'),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          maxLines: 4,
                          controller: _linkController,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Description'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
