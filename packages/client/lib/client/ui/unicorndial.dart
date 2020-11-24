import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

// Forked from https://pub.dev/packages/unicorndial and removed animation on build

class UnicornOrientation {
  static const HORIZONTAL = 0;
  static const VERTICAL = 1;
}

class UnicornButton extends FloatingActionButton {
  final FloatingActionButton button;
  final String badge;
  final String labelText;
  final double labelFontSize;
  final Color labelColor;
  final Color labelBackgroundColor;
  final Color labelShadowColor;
  final bool labelHasShadow;
  final bool hasLabel;

  UnicornButton(
      {this.button,
      this.badge = "",
      this.labelText,
      this.labelFontSize = 14.0,
      this.labelColor,
      this.labelBackgroundColor,
      this.labelShadowColor,
      this.labelHasShadow = true,
      this.hasLabel = false})
      : assert(button != null);

  Widget returnLabel() {
    return Container(
        decoration: BoxDecoration(
            boxShadow: this.labelHasShadow
                ? [
                    new BoxShadow(
                      color: this.labelShadowColor == null ? Color.fromRGBO(204, 204, 204, 1.0) : this.labelShadowColor,
                      blurRadius: 3.0,
                    ),
                  ]
                : null,
            color: this.labelBackgroundColor == null ? Colors.white : this.labelBackgroundColor,
            borderRadius: BorderRadius.circular(3.0)), //color: Colors.white,
        padding: EdgeInsets.all(9.0),
        child: Text(this.labelText,
            style: TextStyle(
                fontSize: this.labelFontSize,
                fontWeight: FontWeight.bold,
                color: this.labelColor == null ? Color.fromRGBO(119, 119, 119, 1.0) : this.labelColor)));
  }

  Widget build(BuildContext context) {
    return this.button;
  }
}

class UnicornDialer extends StatefulWidget {
  final int orientation;
  final Widget parentButton;
  final Widget finalButtonIcon;
  final bool hasBackground;
  final Color parentButtonBackground;
  final String badge;
  final bool hideBadgeWhenOpen;
  final List<UnicornButton> buttons;
  final int animationDuration;
  final double childPadding;
  final Color backgroundColor;
  final Function onMainButtonPressed;
  final Object parentHeroTag;
  final bool hasNotch;

  UnicornDialer(
      {this.parentButton,
      this.parentButtonBackground,
      this.badge = "",
      this.hideBadgeWhenOpen = false,
      this.buttons,
      this.onMainButtonPressed,
      this.orientation = 1,
      this.hasBackground = true,
      this.backgroundColor = Colors.white30,
      this.parentHeroTag = "parent",
      this.finalButtonIcon,
      this.animationDuration = 180,
      this.childPadding = 4.0,
      this.hasNotch = false})
      : assert(parentButton != null);

  _UnicornDialer createState() => _UnicornDialer();
}

class _UnicornDialer extends State<UnicornDialer> with TickerProviderStateMixin {
  AnimationController _animationController;

  bool isOpen = false;

  @override
  void initState() {
    this._animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: widget.animationDuration));

    super.initState();
  }

  @override
  dispose() {
    this._animationController.dispose();
    super.dispose();
  }

  void mainActionButtonOnPressed() {
    if (this._animationController.isDismissed) {
      this._animationController.forward();
    } else {
      this._animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    this._animationController.reverse();

    var hasChildButtons = widget.buttons != null && widget.buttons.length > 0;

    var mainFAB = FloatingActionButton(
      isExtended: false,
      heroTag: widget.parentHeroTag,
      backgroundColor: widget.parentButtonBackground,
      onPressed: () {
        mainActionButtonOnPressed();
        if (widget.onMainButtonPressed != null) {
          widget.onMainButtonPressed();
        }
      },
      child: !hasChildButtons
          ? widget.parentButton
          : AnimatedBuilder(
              animation: this._animationController,
              builder: (BuildContext context, Widget child) {
                return Transform(
                  transform: new Matrix4.rotationZ(this._animationController.value * 0.8),
                  alignment: FractionalOffset.center,
                  child: this._animationController.isDismissed
                      ? widget.parentButton
                      : widget.finalButtonIcon == null
                          ? Icon(Icons.close)
                          : widget.finalButtonIcon,
                );
              },
            ),
    );

    if (hasChildButtons) {
      var mainFloatingButton = Badge(
        text: widget.badge,
        animation: this._animationController,
        child: AnimatedBuilder(
          animation: this._animationController,
          builder: (BuildContext context, Widget child) {
            return Transform.rotate(
              angle: this._animationController.value * 0.8,
              child: mainFAB,
            );
          },
        ),
      );

      var childButtonsList = widget.buttons == null || widget.buttons.length == 0
          ? List<Widget>()
          : List.generate(
              widget.buttons.length,
              (index) {
                var intervalValue = index == 0 ? 0.9 : ((widget.buttons.length - index) / widget.buttons.length) - 0.2;

                intervalValue = intervalValue < 0.0 ? (1 / index) * 0.5 : intervalValue;

                var childFAB = Badge(
                  text: widget.buttons[index].badge,
                  mini: widget.buttons[index].button.mini,
                  child: FloatingActionButton(
                    onPressed: () {
                      if (widget.buttons[index].button.onPressed != null) {
                        widget.buttons[index].button.onPressed();
                      }

                      this._animationController.reverse();
                    },
                    child: widget.buttons[index].button.child,
                    heroTag: widget.buttons[index].button.heroTag,
                    backgroundColor: widget.buttons[index].button.backgroundColor,
                    mini: widget.buttons[index].button.mini,
                    tooltip: widget.buttons[index].button.tooltip,
                    key: widget.buttons[index].button.key,
                    elevation: widget.buttons[index].button.elevation,
                    foregroundColor: widget.buttons[index].button.foregroundColor,
                    highlightElevation: widget.buttons[index].button.highlightElevation,
                    isExtended: widget.buttons[index].button.isExtended,
                    shape: widget.buttons[index].button.shape,
                  ),
                );

                return Positioned(
                  right: widget.orientation == UnicornOrientation.VERTICAL
                      ? widget.buttons[index].button.mini
                          ? 4.0
                          : 0.0
                      : ((widget.buttons.length - index) * 55.0) + 15,
                  bottom: widget.orientation == UnicornOrientation.VERTICAL
                      ? ((widget.buttons.length - index) * 55.0) + 15
                      : 8.0,
                  child: Row(
                    children: [
                      ScaleTransition(
                        scale: CurvedAnimation(
                          parent: this._animationController,
                          curve: Interval(
                            intervalValue,
                            1.0,
                            curve: Curves.linear,
                          ),
                        ),
                        alignment: FractionalOffset.center,
                        child: (!widget.buttons[index].hasLabel) || widget.orientation == UnicornOrientation.HORIZONTAL
                            ? Container()
                            : Container(
                                padding: EdgeInsets.only(
                                  right: widget.childPadding,
                                ),
                                child: widget.buttons[index].returnLabel(),
                              ),
                      ),
                      ScaleTransition(
                        scale: CurvedAnimation(
                          parent: this._animationController,
                          curve: Interval(intervalValue, 1.0, curve: Curves.linear),
                        ),
                        alignment: FractionalOffset.center,
                        child: childFAB,
                      )
                    ],
                  ),
                );
              },
            );

      var unicornDialWidget = Container(
        margin: widget.hasNotch ? EdgeInsets.only(bottom: 15.0) : null,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: childButtonsList.toList()
            ..add(
              Positioned(
                right: null,
                bottom: null,
                child: mainFloatingButton,
              ),
            ),
        ),
      );

      var modal = ScaleTransition(
        scale: CurvedAnimation(
          parent: this._animationController,
          curve: Interval(1.0, 1.0, curve: Curves.linear),
        ),
        alignment: FractionalOffset.center,
        child: GestureDetector(
          onTap: mainActionButtonOnPressed,
          child: Container(
            color: widget.backgroundColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      );

      return widget.hasBackground
          ? Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [Positioned(right: -16.0, bottom: -16.0, child: modal), unicornDialWidget],
            )
          : unicornDialWidget;
    }

    return mainFAB;
  }
}

class Badge extends StatelessWidget {
  final String text;
  final Widget child;
  final bool mini;
  final AnimationController animation;

  const Badge({
    Key key,
    @required this.child,
    this.animation,
    this.text = "",
    this.mini = false,
  }) : super(key: key);

  getBadge() {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: new BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(mini ? 9 : 10),
      ),
      constraints: BoxConstraints(
        minWidth: mini ? 18 : 20,
        minHeight: mini ? 18 : 20,
      ),
      child: new Text(
        text,
        style: new TextStyle(
          color: Colors.white,
          fontSize: mini ? 9 : 10,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return text != ""
        ? Stack(
            clipBehavior: Clip.none,
            children: [
              child,
              Positioned(
                top: mini ? -1 : -2,
                right: mini ? -1 : -2,
                child: animation == null
                    ? getBadge()
                    : FadeTransition(
                        opacity: animation.drive(Tween(begin: 1.0, end: 0.0)),
                        child: getBadge(),
                      ),
              ),
            ],
          )
        : child;
  }
}
