require './lib/compass-photoshop-gradient-overlay'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "2.0.0"
  s.date = "2013-10-07"

  # Gem Details
  s.name = "compass-photoshop-gradient-overlay"
  s.description = "A compass extension to translate between Photoshop gradient overlays and CSS linear-gradients"
  s.summary = "A compass extension to translate between Photoshop gradient overlays and CSS linear-gradients"
  s.authors = ["Tim Hettler"]
  s.email = ["me+github@timhettler.com"]
  s.homepage = "https://github.com/timhettler/compass-photoshop-gradient-overlay"

  # Gem Files

  # README file
  # s.files = ["README.md"]

  # CHANGELOG
  # s.files += ["CHANGELOG.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")

  # Template Files
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  s.add_dependency("sass")
  s.add_dependency("compass", ">= 0.13")
end
