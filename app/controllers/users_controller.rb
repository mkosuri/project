class UsersController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!

  # GET /products
  # GET /products.json
  def index
    @users = User.all
  end

  # GET /products/1
  # GET /products/1.json
  def show 
    render :text => "successfully created code"
  end

  # GET /products/new
  def new
    @user = User.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
            render :text => @user.inspect and return
      #   render :text => "successfully"
      #   format.html { redirect_to @user, notice: 'Product was successfully created.' }
      #   format.json { render action: 'show', status: :created, location: @user }
       else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
     # authorize @product
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email,:password,:password_confirmation,:fistname,:lastname,:role)
    end
end