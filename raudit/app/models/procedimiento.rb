class Procedimiento < ApplicationRecord
	self.primary_key = 'id'
	#has_many :PaquetePlanToProcedimiento, class_name: "PaquetePlanToProcedimiento", foreing_key: "idprocedimiento"
end
