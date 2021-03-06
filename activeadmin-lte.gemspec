# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_admin/LTE/version'

Gem::Specification.new do |spec|
  spec.name          = "activeadmin-lte"
  spec.version       = ActiveAdmin::LTE::VERSION
  spec.authors       = ["Zidni Mubarock"]
  spec.email         = ["zidmubarock@gmail.com"]
  spec.summary       = %q{AadminLTE ( Almsaeedstudio.com ) theme for ActiveAdmin }
  spec.description   = %q{AadminLTE ( Almsaeedstudio.com ) theme for ActiveAdmin }
  spec.homepage      = "https://github.com/barock19/active_admin-LTE"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = Dir["{lib,app}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "bootstrap-kaminari-views"
  spec.add_dependency "quiet_assets"
  spec.add_dependency "awesome_print"
  spec.add_dependency "formtastic-bootstrap"
end
