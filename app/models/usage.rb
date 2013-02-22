class Usage < ActiveRecord::Base
	has_one :price, dependent: :destroy

	accepts_nested_attributes_for :price

	def elec_spend
		self.elec * price.elec
	end

	def gas_spend
		self.gas * price.gas
	end

	def biomass_spend
		self.biomass * price.biomass
	end

	def wind_spend
		self.wind * price.wind
	end

	def solar_spend
		self.solar * price.solar
	end

	def chp_elec_spend
		self.chp_elec * price.chp_elec
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true, skip_blanks:true) do |row|
			u=Usage.create(:amount => row[0])
			u.create_price(:amount => row[1])
		end
	end
end