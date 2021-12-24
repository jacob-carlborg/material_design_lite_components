# frozen_string_literal: true

require_relative "lib/material_design_lite_components/version"

Gem::Specification.new do |spec|
  spec.name = "material_design_lite_components"
  spec.version = MaterialDesignLiteComponents::VERSION
  spec.authors = ["Jacob Carlborg"]
  spec.email = ["doob@me.com"]

  spec.summary = "A set of Rails helpers for Material Design Lite"
  spec.homepage = "https://github.com/jacob-carlborg/material_design_lite_components"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jacob-carlborg/material_design_lite_components"
  spec.metadata["changelog_uri"] = "https://github.com/jacob-carlborg/material_design_lite_components/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionview", ">= 6.0.0"
  spec.add_dependency "activemodel", ">= 6.0.0"
  spec.add_dependency "activesupport", ">= 6.0.0"
  spec.add_dependency "view_component", "~> 2.47"
  spec.add_dependency "zeitwerk", "~> 2.5"

  spec.add_development_dependency "capybara", "~> 3.36"
  spec.add_development_dependency "combustion", "~> 1.3"
  spec.add_development_dependency "commonmarker", "~> 0.23"
  spec.add_development_dependency "pry", "~> 0.14"
  spec.add_development_dependency "pry-byebug", "~> 3.8"
  spec.add_development_dependency "rails", "~> 6.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "rubocop", "~> 1.24"
  spec.add_development_dependency "rubocop-rspec", "~> 2.7"
  spec.add_development_dependency "yard", "~> 0.9"

  spec.metadata = {
    "rubygems_mfa_required" => "true"
  }
end
