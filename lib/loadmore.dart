import 'dart:io';

import 'package:flutter/cupertino.dart' as cp;
import 'package:flutter/material.dart';

class ContinuousListView extends StatefulWidget {
  const ContinuousListView({
    required this.itemCount,
    required this.itemBuilder,
    required this.onRefresh,
    required this.onLoadMore,
    required this.canLoadMore,
    super.key,
    this.shrinkWrap = false,
    this.onControllerCreated,
    this.primary = false,
    this.separatorBuilder,
  });
  final bool shrinkWrap;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final void Function(ScrollController scrollController)? onControllerCreated;

  final Future<void> Function() onRefresh;
  final Future<void> Function()? onLoadMore;
  final bool primary;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final bool canLoadMore;

  @override
  State<ContinuousListView> createState() => _ContinuousListViewState();
}

class _ContinuousListViewState extends State<ContinuousListView> {
  late final ScrollController _scrollController;
  bool isLoadingMore = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    widget.onControllerCreated?.call(_scrollController);
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  Future<void> _scrollListener() async {
    final position = _scrollController.position;
    const kScrollOffset = 150;
    final isAtBottom = Platform.isIOS
        ? position.pixels >= position.maxScrollExtent - kScrollOffset
        : position.pixels >= position.maxScrollExtent;
    if (isAtBottom && widget.canLoadMore && isLoadingMore == false) {
      isLoadingMore = true;

      // scroll to bottom includes loading widget. because scroll behaviour
      // on ios and android is different
      // need to scroll after list's length updated
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        // each item (like ProductCell or CustomerCell) in this list
        // has height of 48.
        const kDefaultExtentOffset = 48;

        //on ios,
        //[position.pixels] can be greater than [position.maxScrollExtent]
        //but on android,
        //[position.pixels] is less or equal to [position.maxScrollExtent]
        //so we need to add item count plus 1 before scroll to bottom
        //to make sure we scroll to loading widget
        final offsetToScroll = Platform.isIOS ? 0 : kDefaultExtentOffset;
        await _scrollController.animateTo(
          position.maxScrollExtent + offsetToScroll,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
      if (mounted) {
        setState(() {});
      }
      await Future<void>.delayed(const Duration(milliseconds: 1000));
      await widget.onLoadMore?.call();
      isLoadingMore = false;
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => widget.onRefresh(),
      child: cp.ListView.separated(
        primary: widget.primary,
        shrinkWrap: widget.shrinkWrap,
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        itemCount: widget.itemCount + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == widget.itemCount && isLoadingMore) {
            return _buildLoadingWidget();
          }
          return widget.itemBuilder(context, index);
        },
        separatorBuilder: (context, index) =>
            widget.separatorBuilder?.call(context, index) ??
            const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }
}
