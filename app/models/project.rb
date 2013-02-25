class Project < ActiveRecord::Base

	acceptable_project_types = ["Wind - Install", "Biomass - Install", "CHP - Install", "General"]
	acceptable_statuses = ["Proposed", "Accepted - In Progress", "Completed", "Cancelled"]

	validates_inclusion_of :project_type, in: acceptable_project_types
	validates_inclusion_of :status, in: acceptable_statuses

	def acceptable_project_types
		acceptable_project_types = ["Wind - Install", "Biomass - Install", "CHP - Install", "General"]
	end

	def calc_priority_rating
		if self.roi != nil && self.difficulty != nil && self.risk != nil
			self.priority_rating = self.roi + self.difficulty + self.risk
		else
			self.priority_rating = 0
		end
	end

	def check_status
		unless self.status == "Completed"
			self.capital_investment = 0
			self.annual_gas_savings = 0
			self.annual_elec_savings = 0
			self.annual_biomass_savings = 0
		end
	end

	def acceptable_statuses
		acceptable_statuses = ["Proposed", "Accepted - In Progress", "Completed", "Cancelled"]
	end

	before_save :calc_priority_rating, :check_status
end
