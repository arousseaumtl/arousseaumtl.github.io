lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cv/version"

Gem::Specification.new do |spec|
  spec.name          = "cv"
  spec.version       = CV::VERSION
  spec.authors       = ["Alexander Rousseau"]
  spec.email         = ["alex@arousseau.net"]
  spec.summary       = "cv"
  spec.homepage      = "https://github.com/arousseaumtl/arousseaumtl.github.io"
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass)!i) }
  
  spec.add_runtime_dependency 'github-pages'
  spec.add_runtime_dependency "jekyll-seo-tag"
  spec.add_development_dependency "html-proofer"
end
