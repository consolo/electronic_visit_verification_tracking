gem 'activerecord', '~> 2.3'

##
# &copy; 2009 Andrew Coleman
# Released under MIT license.
# http://www.opensource.org/licenses/mit-license.php
#
module Consolo
  module ElectronicVisitVerification
    module ClassMethods
      def track_evv
        self.class_eval do
          has_one :electronic_visit_verification, :as => :owner, :dependent => :destroy
          accepts_nested_attributes_for :electronic_visit_verification
        end
        
        include Consolo::ElectronicVisitVerification::InstanceMethods
      end
    end
    
    module InstanceMethods
    end
  end
end

ActiveRecord::Base.send :extend, Consolo::ElectronicVisitVerification::ClassMethods
