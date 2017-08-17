class Application < ActiveRecord::Base
  require 'csv'
  require 'iconv'
  self.abstract_class = true
end
