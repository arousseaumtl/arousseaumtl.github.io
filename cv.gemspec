lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cv/version"

Gem::Specification.new do |spec|
  spec.name          = "cv"
  spec.version       = CV::VERSION
  spec.authors       = ["Alexander Rousseau"]
  spec.email         = ["arousseaumtl@gmail.com"]
  spec.summary       = "cv"
  spec.homepage      = "https://github.com/arousseaumtl/arousseaumtl.github.io"
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass)!i) }
  spec.required_ruby_version = '~> 2.0'
  spec.add_runtime_dependency 'github-pages', '~> 209'
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_development_dependency "html-proofer", "~> 3.9"
end
