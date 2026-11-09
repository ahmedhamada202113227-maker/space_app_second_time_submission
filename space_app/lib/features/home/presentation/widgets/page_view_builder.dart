import 'package:flutter/material.dart';
import 'package:space_app/features/home/data/models/planets_model.dart';
import 'package:space_app/features/home/presentation/widgets/one_planet_item.dart';

// ignore: must_be_immutable
class PageViewBuilder extends StatefulWidget {
  PageViewBuilder({
    super.key,
    required this._pageController,
    required this._list,
    required this.height,
    required this.width,
    required this._currentIndex,
  });

  final PageController _pageController;
  final List<PlanetsModel> _list;
  final double height;
  final double width;
  int _currentIndex;

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget._pageController,
      onPageChanged: (index) {
        setState(() {
          widget._currentIndex = index;
        });
      },
      itemCount: widget._list.length,
      itemBuilder: (context, index) {
        return OnePlanetItem(
          height: widget.height,
          width: widget.width,
          planetsModel: widget._list[index],
          currentIndex: widget._currentIndex,
          itemCount: widget._list.length,
          pageController: widget._pageController,
        );
      },
    );
  }
}
