import 'package:flutter/material.dart';
import 'package:fooder_app/api/mock_fooderlich_service.dart';
import 'package:fooder_app/components/components.dart';

import 'package:fooder_app/models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
     future: mockService.getExploreData(),

      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
       if (snapshot.connectionState == ConnectionState.done) {
         return ListView (
           scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
              const SizedBox(
                height: 16,
              ),
              FriendPostListView(friendPosts: snapshot.data?.friendPosts ?? []),

              Container(
                height: 400,
                color: Colors.green,
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
