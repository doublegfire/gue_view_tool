
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gue_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "gue_view_tool"
  spec.version       = GueViewTool::VERSION
  spec.authors       = ["doubleg"]
  spec.email         = ["darnel_free@yahoo.com"]

  spec.summary       = %q{various view specific methods for application i use.}
  spec.description   = %q{provides generated HTML data for rails application.}
  spec.homepage      = "https://guinelgue.com"
  spec.license       = "MIT"

 
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
