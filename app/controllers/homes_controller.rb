class HomesController < ApplicationController
# before_action :authenticate_user!
	def index
   # render :text => "this is test controller"
   @home = Gadget.all
	end
end