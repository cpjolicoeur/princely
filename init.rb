require 'prince'
require 'pdf_helper'

PRINCELY_CONFIG = YAML.load_file( "#{RAILS_ROOT}/config/princely.yml" )[RAILS_ENV]

Mime::Type.register 'application/pdf', :pdf

ActionController::Base.send(:include, PdfHelper)
