# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'activeadmin-reform'
  spec.version       = '0.5.0'
  spec.authors       = ['Artyom Bolshakov']
  spec.email         = ['abolshakov@spbtv.com']

  spec.summary       = 'Integrates ActiveAdmin with Reform'
  spec.description   = 'Provides ability to use form object in your ActiveAdmin application'
  spec.homepage      = 'https://github.com/bolshakov/activeadmin-reform'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 3.2.22.5'
  spec.add_dependency 'activeadmin', ['>= 1.0.0.pre5', '<= 2.0.0.alpha']
  spec.add_dependency 'disposable', '>= 0.2.0'
  spec.add_dependency 'reform', '<= 2.3.0.rc1'
  spec.add_dependency 'reform-rails', '<= 0.2.0.rc2'
  spec.add_development_dependency 'appraisal', '2.2.0'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'capybara', '2.17.0'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.4.8'
  spec.add_development_dependency 'database_cleaner', '~> 1.5.1'
  spec.add_development_dependency 'launchy', '~> 2.4.3'
  spec.add_development_dependency 'poltergeist'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'spbtv_code_style', '~> 1.4.1'
  spec.add_development_dependency 'sqlite3', '~> 1.3.11'
  spec.add_development_dependency 'test-unit', '~> 3.0' # Rails 3.2 support
end
