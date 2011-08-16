module NotifyOnError
  ## Define ControllerMethods
  module Controller
  	## this one manages the usual self.included, klass_eval stuff
    extend ActiveSupport::Concern

    included do 
      rescue_from 'Exception' do |ex|
        Rails.logger.error( "Exception found #{ex.exception}") 
        Rails.logger.error( "Parameters #{params.inspect}") 
        Rails.logger.error( ex.backtrace.join("\n") )
        if NotifyOnError.notification_environments.map(&:to_s).include?( Rails.env )
          case NotifyOnError.notification_method
          when :action_mailer
            Rails.logger.error( "Notify via ActionMailer" )
            ErrorMailer.exception_email(ex).deliver 
          else
            Rails.logger.error( "Unrecognized notification method(#{NotifyOnError.notification_method})" )
          end #case 
        else
          Rails.logger.error( "Suppressing notification because of environment(#{Rails.env})" )
        end

        render :status => 500
      end #rescue
    end

    module InstanceMethods
    end

  end
end

::ActionController::Base.send :include, NotifyOnError::Controller

