import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Custom page transitions for the go_router
class CustomTransitions {
  /// Slide transition that slides in from the right
  static CustomTransitionPage<T> slideTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  /// Fade transition that fades in the new screen
  static CustomTransitionPage<T> fadeTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  /// Scale and fade transition for a more dramatic effect
  static CustomTransitionPage<T> scaleTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.9;
        const end = 1.0;
        const curve = Curves.easeInOutCubicEmphasized;

        var scaleTween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var scaleAnimation = animation.drive(scaleTween);

        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(scale: scaleAnimation, child: child),
        );
      },
    );
  }
}
