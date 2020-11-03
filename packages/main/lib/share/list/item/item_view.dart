import 'dart:async';

import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:main/share/list/item/item.dart';
import 'package:main/ui/spinner.dart';

class ItemWidget extends StatelessWidget {
  final String _id;
  final String _name;
  final SlidableController _controller;
  final FutureOr<void> onDelete;
  final FutureOr<void> onRefresh;
  final FutureOr<void> onEdit;
  final FutureOr<void> onDownload;
  final FutureOr<void> onOpen;

  ItemWidget(
    this._id,
    this._name,
    this._controller, {
    Key key,
    this.onDelete,
    this.onRefresh,
    this.onEdit,
    this.onDownload,
    this.onOpen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemBloc(
        _id,
        _name,
        RepositoryProvider.of<Data>(context),
      ),
      child: ItemWidgetContent(
        _controller,
        onDelete: onDelete,
        onRefresh: onRefresh,
        onEdit: onEdit,
        onDownload: onDownload,
        onOpen: onOpen,
      ),
    );
  }
}

class ItemWidgetContent extends StatelessWidget {
  final SlidableController _controller;
  final FutureOr<void> onDelete;
  final FutureOr<void> onRefresh;
  final FutureOr<void> onEdit;
  final FutureOr<void> onDownload;
  final FutureOr<void> onOpen;

  @override
  ItemWidgetContent(
    this._controller, {
    this.onDelete,
    this.onRefresh,
    this.onEdit,
    this.onDownload,
    this.onOpen,
    Key key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return BlocBuilder<ItemBloc, ItemState>(
      builder: (context, state) {
        final iconColor = _iconColor(
          Theme.of(context),
          ListTileTheme.of(context),
        );
        return Slidable(
          controller: _controller,
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.1,
          child: SlidableListTile(
            _controller,
            state,
            key: key,
            onOpen: onOpen,
            onDownload: onDownload,
          ),
          secondaryActions: <Widget>[
            if (state.local)
              IconSlideAction(
                //caption: 'Delete',
                color: Colors.transparent,
                foregroundColor: iconColor,
                icon: Icons.delete,
                onTap: onDelete,
              ),
            if (state.local)
              IconSlideAction(
                //caption: 'Refresh',
                color: Colors.transparent,
                icon: Icons.sync,
                foregroundColor: iconColor,
                onTap: onRefresh,
              ),
            if (state.local)
              IconSlideAction(
                //caption: 'Edit',
                color: Colors.transparent,
                icon: Icons.edit,
                foregroundColor: iconColor,
                onTap: onEdit,
              ),
          ],
        );
      },
    );
  }
}

class SlidableListTile extends StatelessWidget {
  final ItemState _item;
  final SlidableController _controller;
  final FutureOr<void> onDownload;
  final FutureOr<void> onOpen;

  const SlidableListTile(
    this._controller,
    this._item, {
    Key key,
    this.onDownload,
    this.onOpen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_item.name),
      onTap: onOpen,
      trailing: _item.sending
          ? IconButton(
              icon: Spinner(icon: Icons.sync),
              onPressed: () {},
            )
          : _item.local
              ? IconButton(
                  icon: Icon(
                    _item.dirty ? Icons.offline_bolt : Icons.offline_pin,
                  ),
                  onPressed: () {
                    final thisItemIsOpen = _controller.activeState != null &&
                        _controller.activeState == Slidable.of(context) &&
                        _controller.activeState.actionType ==
                            SlideActionType.secondary;

                    final anotherItemIsOpen = _controller.activeState != null &&
                        _controller.activeState != Slidable.of(context) &&
                        _controller.activeState.actionType ==
                            SlideActionType.secondary;

                    if (anotherItemIsOpen) {
                      _controller.activeState.close();
                    }
                    if (thisItemIsOpen) {
                      Slidable.of(context).close();
                    } else {
                      Slidable.of(context).open(
                        actionType: SlideActionType.secondary,
                      );
                    }
                  },
                )
              : IconButton(
                  icon: Icon(Icons.file_download),
                  onPressed: onDownload,
                ),
    );
  }
}

Color _iconColor(ThemeData theme, ListTileTheme tileTheme) {
  final enabled = true; // TODO: always?
  final selected = false; // TODO: always?

  // This logic was copied from ListTile:

  if (!enabled) return theme.disabledColor;

  if (selected && tileTheme?.selectedColor != null)
    return tileTheme.selectedColor;

  if (!selected && tileTheme?.iconColor != null) return tileTheme.iconColor;

  switch (theme.brightness) {
    case Brightness.light:
      return selected ? theme.primaryColor : Colors.black45;
    case Brightness.dark:
      return selected
          ? theme.accentColor
          : null; // null - use current icon theme color
  }
  assert(theme.brightness != null);
  return null;
}
