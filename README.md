A compass extension to translate between Photoshop gradient overlays and CSS linear-gradients. Allows you to take values directly from the layer style and create an identical gradient in pure CSS.

Blend mode translation is also included with this Compass extension.

# Usage


```scss
@import 'photoshop-gradent-overlay';
```

## Function Reference


```scss
photoshop-gradent-overlay( $bg-color, [$blend], [$opacity], [$angle], [$scale], [$gradient-colors], [$gradient-stops] )
```

### Function Parameters

`$bg-color` (required, Color) The background color of the element.

`$blend` (optional, String) The blend mode used to mix the gradient and the backgorund-color. Defaults to "normal" (no blending).

`$opacity` (optional, Percentage) The strength of the overlay. Accepts values between 0% & 100%. Defaults to 100%.

`$angle` (optional, Angle) The direction of the overlay. Accepts values between 0deg & 359deg. Defaults to 90deg (bottom to top).

`$scale` (optional, Percentage) The size of the overlay. Defaults to 100%.

`$gradient-colors` (optional, List) A list of color stops in the gradient. Defaults to (#000, #fff).

`$gradient-stops` (optional, List) A list of stop locations in the gradient. Defaults to (0% to 100%).