
class Api::V2::GadgetsController < Api::ApiController

	def index
		   @gadgets = Gadget.all
		   #render :json => @gadgets
		   render json: Project::Writer::GadgetWriter.new.write(@gadgets)

	 end
 
	 def show
     
	 end

end
