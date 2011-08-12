require 'noe/engine' if defined?(Rails)
require 'application_controller'

module NotifyOnError
  mattr_accessor :notification_method
  @@notification_method = nil
   
  mattr_accessor :notification_environments
  @@notification_environments = nil
   
  mattr_accessor :email_from
  @@email_from = nil

  mattr_accessor :email_to
  @@email_to = nil

  def self.setup
    yield self
  end
end
