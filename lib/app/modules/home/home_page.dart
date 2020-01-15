import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = 'Iti'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff2b374a),
        leading: IconButton(
          icon: Icon(Icons.camera_alt),
          onPressed: () {},
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: const Color(0xff2b374a),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(28),
              child: _avatar(),
            ),
            Text(
              'oi Wígny, seu saldo agora é:',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'R\$ 120,00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.visibility_off,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Container(
              width: double.infinity,
              height: 220,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 10000,
                itemBuilder: (BuildContext context, int index) => _card(index),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'arraste aqui',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2,
        child: InkWell(
          onTap: () => print('clique'),
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            width: 140,
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: const Alignment(10, 1),
                    child: Icon(
                      Icons.attach_money,
                      size: 100,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'pagar $index',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'agora',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      width: 75,
      height: 75,
      child: Stack(
        children: <Widget>[
          _decoratedImg(
            url: 'https://avatars1.githubusercontent.com/u/23202981',
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: _decoratedImg(
              url: 'https://static.thenounproject.com/png/2002633-200.png',
              size: 32,
              border: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _decoratedImg({
    @required String url,
    double size = 70,
    double border = 2.5,
  }) {
    return Container(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: ClipOval(
          child: Image.network(url),
        ),
      ),
      width: size,
      height: size,
      padding: EdgeInsets.all(border),
      decoration: BoxDecoration(
        gradient: gradient,
        shape: BoxShape.circle,
      ),
    );
  }

  LinearGradient gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: const [
      Color(0xFFec6f03),
      Color(0xFFff5592),
    ],
  );
}
