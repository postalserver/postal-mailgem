require 'mail/configuration'
require 'postal/mail_gem/delivery_method'

module Postal
  module MailGem
    module ConfigExtension

      def self.load
        Mail::Configuration.send :include, self
      end

      def self.included(base)
        base.class_eval do
          alias_method :lookup_delivery_method_without_postal, :lookup_delivery_method
          alias_method :lookup_delivery_method, :lookup_delivery_method_with_postal
        end
      end

      def lookup_delivery_method_with_postal(method)
        if method == :postal
          DeliveryMethod
        else
          lookup_delivery_method_without_postal(method)
        end
      end

    end
  end
end
