require_relative "lib/mpngquant/version"

Gem::Specification.new do |spec|
  spec.name = "mpngquant"
  spec.version = Mpngquant::VERSION
  spec.authors = ["FUNABARA Masao"]
  spec.email = ["masao@masoo.jp"]

  spec.summary = "Wrapper library for pngquant."
  spec.description = "Wrapper library for pngquant."
  spec.homepage = "https://github.com/masoo/mmozjpeg"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/masoo/mmozjpeg"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "standardrb"
end
