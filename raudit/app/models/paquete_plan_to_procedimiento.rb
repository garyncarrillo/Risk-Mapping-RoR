class PaquetePlanToProcedimiento < ApplicationRecord
	self.primary_key = 'id'
    has_many :procedimientos

end
