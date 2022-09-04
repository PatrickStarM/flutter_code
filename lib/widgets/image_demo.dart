import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image图片组件'),
        elevation: 8,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        spacing: 20,
        runSpacing: 10,
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(
              'images/img1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 150.0,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.blue.shade200,
            child: ClipOval(
              clipper: _MyClipper(),
              child: Image.network(
                'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf2.jpg',
              ),
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
            ),
            child: Image.network(
              'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf2.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.bottomRight,
              color: Colors.deepPurple,
              colorBlendMode: BlendMode.screen,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ],
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTRB(20.0, 20.0, 140, 120);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
