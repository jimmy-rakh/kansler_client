import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_network/image_network.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../../../app/router.dart';
import '../../../../../../core/constants/kaze_icons.dart';
import '../../../../../../core/constants/spaces.dart';
import '../../../../../../core/network/constants.dart';
import '../../../../domain/entities/category.entitity.dart';
import '../../subcategory/bloc/subcategory_bloc.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({
    super.key,
    required this.category,
    this.isSelected,
    this.showImage = true,
    required this.callback,
  });

  final CategoryEntitity category;
  final bool? isSelected;
  final bool showImage;
  final void Function(bool) callback;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _expanded = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      upperBound: 0.5,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  toogleExpander() {
    widget
        .callback(widget.isSelected == null ? _expanded : !widget.isSelected!);
    if (widget.isSelected != null) return;

    setState(() {
      if (_expanded) {
        _controller.animateTo(-0.5);
      } else {
        _controller.forward(from: 0.0);
      }
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SubcategoryBloc>();
    return Padding(
      padding: context.isSmall
          ? const EdgeInsets.only(left: 8, right: 8)
          : const EdgeInsets.only(left: 20, right: 20),
      child: StickyHeader(
        header: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: toogleExpander,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: context.cardColor,
                border: const Border(
                  bottom: BorderSide.none,
                ),
                borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (widget.showImage)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: widget.category.imageUrl == null
                              ? Image.asset(
                                  "assets/images/nophoto.png",
                                  height: 40,
                                  width: 35,
                                  fit: BoxFit.cover,
                                )
                              : ImageNetwork(
                                  height: 40,
                                  width: 35,
                                  onLoading: const SizedBox(),
                                  fitWeb: BoxFitWeb.cover,
                                  fitAndroidIos: BoxFit.cover,
                                  image: NetworkConstants.apiBaseUrl +
                                      widget.category.imageUrl!),
                        ),
                      ),
                    SizedBox(
                      width: context.isSmall
                          ? context.width * .64
                          : context.width * .2,
                      child: Text(
                        widget.category.name,
                        style: const TextStyle(fontSize: 15),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                if (widget.isSelected != null)
                  Checkbox(
                    value: widget.isSelected,
                    onChanged: (v) => widget.callback(v!),
                    side: BorderSide.none,
                  ),
                if (widget.isSelected == null)
                  RotationTransition(
                    turns: Tween(begin: 0.5, end: 1.0).animate(_controller),
                    child: const Icon(KazeIcons.arrowLeftOutline),
                  )
              ],
            ),
          ),
        ),
        content: AnimatedSize(
          duration: Durations.medium1,
          child: _expanded
              ? Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 6),
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.category.children.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        context.isSmall
                            ? router.navigate(SubcategoryRoute(category: widget.category.children[index]),)
                            : bloc.add(SubcategoryEvent.init(widget.category.children[index]));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: context.cardColor,
                              borderRadius: BorderRadius.circular(4)),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.category.children[index].name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.theme.textTheme.titleSmall,
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => verticalSpace5,
                  ),
                )
              : SizedBox.fromSize(
                  size: Size(context.width, 0),
                ),
        ),
      ),
    );
  }
}
