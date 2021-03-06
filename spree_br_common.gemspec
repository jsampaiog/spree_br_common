# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_br_common'
  s.version     = '3.0.1'
  s.summary     = 'Brazil common aspects'
  s.description = 'This extension has goal to provide common aspects as cities, extras address informations and some seeds to Brazil'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Diego Domingues'
  s.email     = 'diego.domingues16@gmail.com'
  s.homepage  = 'https://github.com/ddomingues/spree_br-common'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'spree_core', '~> 4.2', '>= 4.0.0'
  s.add_runtime_dependency 'cpf_cnpj', '>= 0.2', '>= 0.2.1'
#  s.add_runtime_dependency 'jc-validates_timeliness', '~> 3.1', '>= 3.1.1'
  s.add_runtime_dependency 'validates_timeliness', '~> 6.0.0.alpha1'
  s.add_runtime_dependency 'rest-client', '>= 1.8', '>= 1.8.0'

  s.add_development_dependency 'spree_dev_tools'
end
