class Usage < ActiveRecord::Base
	has_one :price, dependent: :destroy

	accepts_nested_attributes_for :price

	def elec_spend
		unless self.elec.nil?
			self.elec * price.elec
		end
	end


	def gas_spend
		unless self.gas.nil?
			self.gas * price.gas
		end
	end

	def chp_gas_spend
		unless self.chp_gas.nil?
			self.chp_gas * price.gas
		end
	end

	def biomass_spend
		unless self.biomass.nil?
			self.biomass * price.biomass
		end
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true, skip_blanks:true) do |row|
			u=Usage.create(:amount => row[0])
			u.create_price(:amount => row[1])
		end
	end

	def total_gas_spend
		unless self.chp_gas.nil? && self.gas.nil?
			if self.chp_gas.nil?
				self.gas * price.gas
			elsif self.gas.nil?
				self.chp_gas * price.gas
			else
				(self.chp_gas + self.gas) * price.gas
			end
		end
	end
end