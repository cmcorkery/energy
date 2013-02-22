class UsagesController < ApplicationController
	def index
		@usages = Usage.all
		respond_to do |format|
			format.html # index.html.erb
			format.json {render json: @usages}
		end
	end

	def destroy
		@usage = Usage.find(params[:id])
		@usage.destroy

		respond_to do |format|
			format.html {redirect_to usages_url}
			format.json {head :no_content}
		end
	end

	def new
		@usage = Usage.new
		@usage.build_price

		respond_to do |format|
			format.html
			format.json {render json: @usages}
		end
	end

	def create
		@usage = Usage.new(params[:usage])

		respond_to do |format|
      		if @usage.save
        		format.html { redirect_to @usage, notice: 'Usage was successfully created.' }
        		format.json { render json: @usage, status: :created, location: @usage }
      		else
       			format.html { render action: "new" }
        		format.json { render json: @usage.errors, status: :unprocessable_entity }
      		end
    	end
    end

    def show
    	@usage = Usage.find(params[:id])

    	respond_to do |format|
    		format.html
    		format.json{render json: @usage}
    	end
    end

    def import
    	Usage.import(params[:file])
    	redirect_to usages_url, notice: "usages Imported Successfully!"
    end
end
