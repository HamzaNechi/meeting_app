import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:group_video_calling/therapy_en_ligne/call_page.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeCall extends StatefulWidget {
  const HomeCall({super.key});

  @override
  State<HomeCall> createState() => _HomeCallState();
}

class _HomeCallState extends State<HomeCall> {
  @override
  Widget build(BuildContext context) {

    final TextEditingController _controller=TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controller,
            ),
      
            SizedBox(height: 10,),
      
            InkWell(
              onTap: () async {
                await [Permission.camera,Permission.microphone].request().then((value) => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Call(channelName: _controller.text.trim())))
                });
                
              },
      
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(15)
                ),
      
                child: const Text("Join vdeo call" , style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}