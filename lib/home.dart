import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:wallmaker/model/cat_model.dart';

class WallHome extends StatefulWidget {
  @override
  _WallHomeState createState() => _WallHomeState();
}

class _WallHomeState extends State<WallHome> {
  fetchLatest() {
    var response=http.get(apiUrl, headers: {
      "Authorization : "
    });
  }

  List<Categories> data = List();
  String apiUrl="https://api.pexels.com/v1/curated?per_page=1";

  @override
  void initState() {
    data = fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'WallMaker',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/home.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff5f8fd).withOpacity(0.8),
                borderRadius: BorderRadius.circular(24),
              ),
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return Builders(
                    caption: data[i].catName,
                    imgUrl: data[i].imgUrl,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Builders extends StatelessWidget {
  final String imgUrl, caption;
  Builders({@required this.imgUrl, @required this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imgUrl,
              height: 50,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 50,
            width: 100,
            color: Colors.black12,
            alignment: Alignment.center,
            child: Text(
              caption,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
