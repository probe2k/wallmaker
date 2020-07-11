import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:wallmaker/widget/listings.dart';
import 'package:wallmaker/getter.dart';
import 'package:wallmaker/model/cat_model.dart';
import 'package:wallmaker/model/data_model.dart';

class WallHome extends StatefulWidget {
  @override
  _WallHomeState createState() => _WallHomeState();
}

class _WallHomeState extends State<WallHome> {
  fetchLatest() async {
    var response =
        await http.get(apiUrl, headers: {"Authorization": loadAsset()});
    print(response.body.toString());

    Map<String, dynamic> holder = jsonDecode(response.body);

    holder["photos"].forEach((iteration) {
      DataModel walls = DataModel();
      walls = DataModel.fromMap(iteration);
      lst.add(walls);
    });

    setState(() {});
  }

  List<Categories> data = List();
  List<DataModel> lst = new List();
  String apiUrl = "https://api.pexels.com/v1/curated?per_page=1";

  @override
  void initState() {
    fetchLatest();
    data = fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        padding: const EdgeInsets.only(top: 80),
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
            Container(
              height: 100,
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
            SizedBox(
              height: 10.0,
            ),
            listings(lst, context),
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
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(6),
            ),
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
