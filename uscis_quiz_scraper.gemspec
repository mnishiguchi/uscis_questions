# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uscis_quiz_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = 'uscis_quiz_scraper'
  spec.version       = UscisQuizScraper::VERSION
  spec.authors       = ['Masatoshi Nishiguchi']
  spec.email         = ['nishiguchi.masa@gmail.com']

  spec.summary       = 'Scrape 100 Civics Questions and Answers from the uscis website.'
  spec.description   = 'Scrape 100 Civics Questions and Answers from the uscis website.'
  spec.homepage      = 'https://github.com/mnishiguchi/uscis_quiz_scraper'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://mnishiguchi.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'pry', '~> 0.13'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'

  spec.add_dependency 'nokogiri', '~> 1.10'
  spec.add_dependency 'thor', '~> 1.0'
end
