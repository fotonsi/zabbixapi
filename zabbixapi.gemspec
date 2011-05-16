require 'rubygems'
require 'rake'
require 'echoe'

Gem::Specification.new do |spec|

  spec.version = '0.1.5'
  spec.rubygems_version = '1.3.1'
  spec.name = 'zabbixapi-fotonsi'
  spec.summary = 'Ruby module for work with zabbix api. Forked from http://github.com/verm666/RubyZabbixApi (author: Eduard Snesarev)'

  spec.email = 'admin@foton.es'
  spec.author = 'Fotón, Sistemas Inteligentes'
  spec.homepage = 'https://github.com/fotonsi/zabbixapi'
  spec.description = 'Ruby module for work with zabbix api. Forked from http://github.com/verm666/RubyZabbixApi (author: Eduard Snesarev)'

  spec.has_rdoc = true
  spec.extra_rdoc_files  = 'README.rdoc'


  spec.files = FileList["lib/*.rb", "bin/*", "spec/*", 'zabbixapi.gemspec', 'README.rdoc'].to_a
end
