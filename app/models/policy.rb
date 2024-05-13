class Policy < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "policy_type", "title", "updated_at"]
      end
end
