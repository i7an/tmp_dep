require_relative "lib/tmp_dep/version"

Gem::Specification.new do |spec|
  spec.name = "tmp_dep"
  spec.version = TmpDep::VERSION
  spec.authors = ["Ivan Yurchanka"]
  spec.email = ["vanya.yu@gmail.com"]

  spec.summary = ""
  spec.homepage = "https://github.com/i7an/tmp_dep"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/i7an/tmp_dep/issues",
    "changelog_uri" => "https://github.com/i7an/tmp_dep/releases",
    "source_code_uri" => "https://github.com/i7an/tmp_dep",
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true"
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies
  spec.add_dependency "thor", "~> 1.2"
  spec.add_development_dependency "devise"
end
