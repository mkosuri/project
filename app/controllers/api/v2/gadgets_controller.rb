
class Api::V2::GadgetsController < Api::ApiController

	def index
		   @gadgets = Gadget.all
		   render json: Project::Writer::GadgetWriter.new.write_all(@gadgets)
	end
 
	def show
     @gadget = Gadget.find(params[:id])
     render json: Project::Writer::GadgetWriter.new.write_show(@gadget)
	end

  def create
    puts "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
    @gadget = Gadget.new
    @gadget.title = params[:title]
    @gadget.useful_for = params[:useful_for]
    @gadget.analysis_group = params[:analysis_group]
    @gadget.gadget_description = params[:gadget_description]
    @gadget.cost = params[:cost]
    @gadget.currency_id = params[:currency_id]
    @gadget.tool_aviable = params[:tool_aviable]
    @gadget.technology_used = params[:technology_used]
    @gadget.scientific_description = params[:scientific_description]
     if @gadget.save
      render json: Project::Writer::GadgetWriter.new.write_create(@gadget)
     else
     	render :json => "badresponce"
     end
  end

  def edit
   gadget = Gadget.find(params[:id])
   render json: Project::Writer::GadgetWriter.new.write_edit(gadget)
  end

  def update
   @gadget = Gadget.find(params[:id])

    @gadget.title = params[:gadget][:title] 
    # @gadget.useful_for = params[:useful_for]
    # @gadget.analysis_group = params[:analysis_group]
    # @gadget.gadget_description = params[:gadget_description]
    # @gadget.cost = params[:cost]
    # @gadget.currency_id = params[:currency_id]
    # @gadget.tool_aviable = params[:tool_aviable]
    # @gadget.technology_used = params[:technology_used]
    # @gadget.scientific_description = params[:scientific_description]
     if @gadget.save
      render json: Project::Writer::GadgetWriter.new.write_update(@gadget)
     else
     	render :json => "bad responce"
     end

  end
 
  def destroy
    @gadget = Gadget.destroy(params[:id])
    render :json => "deleted successfully"
    # respond_to do |format|
    #   format.json { redirect_to api_v2_gadgets_path }
    # end
  end


   
end