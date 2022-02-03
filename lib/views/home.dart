import 'package:flutter/material.dart';
import '../models/cards_api.dart';
import '../models/recipies.dart';
import '../views/widgets/racipie_info.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Recipe>? _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await CardsApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.restaurant),
              SizedBox(width: 10),
              Text('Petuk Adda'),
               
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator()
            )
            : ListView.builder(
                itemCount: _recipes!.length,
                itemBuilder: (context, index) {
                  return RecipeInfo(
                      title: _recipes![index].name,
                      cookTime: _recipes![index].totalTime,
                      rating: _recipes![index].rating.toString(),
                      thumbnailUrl: _recipes![index].images
                      );
                },

              ),


              );
  }
}