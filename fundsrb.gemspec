require_relative 'lib/fundsrb/version'

Gem::Specification.new do |spec|
  spec.name          = "fundsrb"
  spec.version       = Fundsrb::VERSION
  spec.authors       = ["Hugo Lyra"]
  spec.email         = ["me@hugolyra.com"]

  spec.summary       = %q{FundsRB}
  spec.description   = %q{A Ruby library to query the fundsexplorer.}
  spec.homepage      = "https://github.com/hamorim/fundsrb"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hamorim/fundsrb"
  spec.metadata["changelog_uri"] = "https://github.com/hamorim/fundsrb/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 12.3", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "nokogiri", '~> 1.6', '>= 1.6.8'
end
