root = File.expand_path '..', File.dirname(File.absolute_path(__FILE__))

require 'active_support/all'

require File.join(root, 'lib', 'fhir_models', 'version')

# Need to require Hashable first
require File.join(root, 'lib', 'fhir_models', 'bootstrap', 'hashable.rb')
require File.join(root, 'lib', 'fhir_models', 'bootstrap', 'json.rb')

Dir.glob(File.join(root, 'lib', 'fhir_models', 'bootstrap', '*.rb')).each do |file|
  require file
end
Dir.glob(File.join(root, 'lib', 'fhir_models', 'bootstrap', '**', '*.rb')).each do |file|
  require file
end

require File.join(root, 'lib', 'fhir_models', 'fhir.rb')

# TODO: Refactor to take advantage of autoload in Rails

# Require the generated code
Dir.glob(File.join(root, 'lib', 'fhir_models', 'fhir', '*.rb')).each do |file|
  require file
end
Dir.glob(File.join(root, 'lib', 'fhir_models', 'fhir', '**', '*.rb')).each do |file|
  require file
end

# Require the fluentpath code
Dir.glob(File.join(root, 'lib', 'fhir_models', 'fluentpath', '*.rb')).each do |file|
  require file
end

# Require the fhir_ext code
Dir.glob(File.join(root, 'lib', 'fhir_models', 'fhir_ext', '*.rb')).each do |file|
  require file
end
