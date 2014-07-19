class GadgetsController < ApplicationController

   before_action :set_product, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!

  # GET /products
  # GET /products.json
  def index
    @gadgets = Gadget.all
  end

  # GET /products/1
  # GET /products/1.json
  def show 
    render :text => "saved successfully"
  end

  # GET /products/new
  def new
    @gadget = Gadget.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @gadget = Gadget.new(gadget_params)
    respond_to do |format|
      if @gadget.save
        format.html { redirect_to @gadget, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gadget }
      else
        format.html { render action: 'new' }
        format.json { render json: @gadget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
     # authorize @product
    respond_to do |format|
      if @gadget.update(gadget_params)
        format.html { redirect_to @gadget, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gadget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @gadget.destroy
    respond_to do |format|
      format.html { redirect_to gadgets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @gadget = Gadget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gadget_params
      params.require(:gadget).permit(:title,:useful_for,:analysis_group,:gadget_description,:company_name,:company_website,
        :cost,:currency_id,:tool_aviable,:technology_used,:scientific_description)
    end
end
 


