# frozen_string_literal: true

require_relative "lib/books_search/version"

Gem::Specification.new do |spec|
  spec.name          = "books_search"
  spec.version       = BooksSearch::VERSION
  spec.authors       = ["yuki-ohta0086"]
  spec.email         = ["yukiohta0823@gmail.com"]

  spec.summary       = %q{GoogleBooksAPI use.}
  spec.description   = %q{It uses google to search for books.}
  spec.homepage      = "https://github.com/yuki-ohta0086"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/yuki-ohta0086/books_search"
  spec.metadata["changelog_uri"] = "https://github.com/yuki-ohta0086/books_search"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.1"
  spec.add_development_dependency "rspec", "~> 3.0"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
