module StateMachine
  module Integrations
     module ActiveModel
        public :around_validation
     end

      module ActiveRecord
        public :around_save
     end
  end
end

class ActiveModel::Name
  def underscore
    to_s.underscore
  end
end