import 'package:flutter/material.dart';

enum LoadingIndicatorVariant { circular, linear }

class LoadingIndicator extends StatelessWidget {
  final LoadingIndicatorVariant variant;
  final Color? color;
  final double? size;
  final double? strokeWidth;

  const LoadingIndicator({
    super.key,
    this.variant = LoadingIndicatorVariant.circular,
    this.color,
    this.size,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultColor = color ?? theme.colorScheme.primary;

    switch (variant) {
      case LoadingIndicatorVariant.circular:
        return Center(
          child: SizedBox(
            width: size ?? 24,
            height: size ?? 24,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(defaultColor),
              strokeWidth: strokeWidth ?? 2,
            ),
          ),
        );

      case LoadingIndicatorVariant.linear:
        return LinearProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(defaultColor),
          backgroundColor: defaultColor.withOpacity(0.2),
        );
    }
  }
} 