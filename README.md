A compass extension to translate between Photoshop gradient overlays and CSS linear-gradients. Allows you to take values directly from the layer style and create an identical gradient in pure CSS.

Blend mode translation is also included with this Compass extension.

# Installation

## Install the Ruby Gem.

  ```
  gem install compass-photoshop-gradient-overlay
  ```

### Install into an existing project:

Edit the project configuration file (`config.rb`) and add:

  ```ruby
  require 'compass-photoshop-gradient-overlay'
  ```

Then run this command from the root of your project:

  ```
  compass install compass-photoshop-gradient-overlay
  ```

### When creating a new project:

  ```
  compass create my_project -r compass-photoshop-gradient-overlay --using compass-photoshop-gradient-overlay
  ```

By default, the extension doesn't add any files to your project. An example scss and html file can be imported by installing the "example" pattern:

  ```
  compass install compass-photoshop-gradient-overlay/example
  ```

# Usage

  ```scss
  @import 'photoshop-gradient-overlay';
  ```

## Function Reference

  ```scss
  photoshop-gradient-overlay( $bg-color, [$blend], [$opacity], [$angle], [$scale], [$gradient-colors], [$gradient-stops] )
  ```

### Function Parameters

`$bg-color` (required, Color) The background color of the element.

`$blend` (optional, String) The blend mode used to mix the gradient and the backgorund-color. Defaults to "normal" (no blending).

`$opacity` (optional, Percentage) The strength of the overlay. Accepts values between 0% & 100%. Defaults to 100%.

`$angle` (optional, Angle) The direction of the overlay. Accepts values between 0deg & 359deg. Defaults to 90deg (bottom to top).

`$scale` (optional, Percentage) The size of the overlay. Defaults to 100%.

`$gradient-colors` (optional, List) A list of color stops in the gradient. Defaults to (#000, #fff).

`$gradient-stops` (optional, List) A list of stop locations in the gradient. Defaults to (0% to 100%).

### Code Samples

Simple gradient using default parameters:

  ```scss
  .simple-gradient {
    @include background-image( photoshop-linear-gradient() );
  }
  ```

  ```css
  .simple-gradient {
    background-image: -webkit-linear-gradient( bottom, #000000 0%, #ffffff 100% );
    …
  }
  ```

Complex gradient:

  ```scss
  .complex-gradient {
    @include background-image(
      photoshop-linear-gradient( #fff, normal, 75%, 0deg, 50%, ( red, orange, yellow, green, blue, violet ), ( 0%, 20%, 40%, 60%, 80%, 100% ) )
    );
  }
```

  ```css
  .complex-gradient {
    background-image: -webkit-linear-gradient( left, rgba(255, 0, 0, 0.75) 25%, rgba(255, 165, 0, 0.75) 35%,rgba(255, 255, 0, 0.75) 45%, rgba(0, 128, 0, 0.75) 55.0%, rgba(0, 0, 255, 0.75) 65%, rgba(238, 130, 238, 0.75) 75% );
    …
  }
  ```

### Demo

More examples can be found here: http://timhettler.github.io/compass-photoshop-gradient-overlay/
