import 'package:flutter/material.dart';
import 'package:fooder_app/api/mock_fooderlich_service.dart';
import 'package:fooder_app/components/components.dart';

import 'package:fooder_app/models/models.dart';

class ExploreScreen extends StatefulWidget {

  ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final mockService = MockFooderlichService();
  late ScrollController _controller;

  void _listenner() {
    if (_controller.offset >= _controller.position.maxScrollExtent && !_controller.position.outOfRange) {
      print('i am at the bottom !');
    }

    if (_controller.offset <= _controller.position.minScrollExtent && !_controller.position.outOfRange) {
      print('i am at the top !');
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_listenner);
  }

  @override
  void dispose() {
    _controller.removeListener(_listenner);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
     future: mockService.getExploreData(),

      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
       if (snapshot.connectionState == ConnectionState.done) {
         return ListView (
           controller: _controller,
           scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
              const SizedBox(
                height: 16,
              ),
              FriendPostListView(friendPosts: snapshot.data?.friendPosts ?? []),

              Container(
                height: 400,
                //color: Colors.green,
              ),
            ],
         );
       } else {
         return const Center(child: CircularProgressIndicator(),);
       }
      },
    );
  }
}
