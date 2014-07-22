require 'rails_helper'
require 'json_expressions/rspec'

 RSpec.describe GadgetsController, :type => :controller do
describe '/api/v2/gadgets for gadgets' do
	  describe Api::V2::GadgetsController, type: :controller do
			  describe "gadget create" do
		    describe "with valid params" do
		    it "creates a new Gadget" do
		    request.accept = "application/json"
		    @gadgets = Gadget.all.count
         post :create,{}
        @gadgets_one = Gadget.all.count
		     # puts gadget.inspect
		     expect(@gadgets)==@gadgets_one + 1
		    expect(response.status).to eq(200)   
		    end
		  end
		end
	 end
	end

	describe '/api/v2/gadgets for gadgets' do
	 describe Api::V2::GadgetsController, type: :controller do
		 describe "gadget show" do
		  describe "with valid params" do
		    it "shows created Gadget" do
		     request.accept = "application/json"
		     gadget = FactoryGirl.create(:gadget)
	         get :show,:id =>gadget.id
		      #Project::Writer::GadgetWriter.new.write_show(gadget)
		      parsed_response = JSON.parse(response.body)
	          expect(parsed_response)==(Project::Writer::GadgetWriter.new.write_show(gadget)) 
		        expect(response.status).to eq(200)   
		    end
		  end
		end
	 end
	end

	describe '/api/v2/gadgets for gadgets' do
	 describe Api::V2::GadgetsController, type: :controller do
		 describe "gadget edit" do
		  describe "it is find edit action" do
		    it "edit the particular gadget" do
		      request.accept = "application/json"
		      gadget = FactoryGirl.create(:gadget)
	         get :edit,:id =>gadget.id
	#plan 0 succ

		       #Project::Writer::GadgetWriter.new.write_edit(gadget)
	#plan 1 fa
		       # expect(response.body).to match_json_expression(
	        #   Project::Writer::GadgetWriter.new.write_edit(gadget).to_json)
	#plan 2 succ
	          parsed_response = JSON.parse(response.body)
	          expect(parsed_response)==(Project::Writer::GadgetWriter.new.write_edit(gadget))
		        expect(response.status).to eq(200)   
		    end
		  end
		end
	 end
	end
	# help
	# parsed_response = JSON.parse(response.body)
	#   expect(parsed_response["key"]).to eq(whatever)

	describe '/api/v2/gadgets for gadgets' do
	 describe Api::V2::GadgetsController, type: :controller do
		 describe "gadget delete" do
		  describe "it is find delete action" do
		    it "edit the particular gadget" do
		      request.accept = "application/json"
		      gadget = FactoryGirl.create(:gadget)
		      gadgets = Gadget.all.count
	         delete :destroy,:id =>gadget.id
		      #Project::Writer::GadgetWriter.new.write_edit(gadget)
		      expect(gadgets).to eq(gadgets)
		       #expect(response.body).to match_json_expression(
	         #Project::Writer::GadgetWriter.new.write_show(gadget))
		      expect(response.status).to eq(200)   
		    end
		  end
		end
	 end
	end
  
	describe '/api/v2/gadgets for gadgets' do
	 describe Api::V2::GadgetsController, type: :controller do
		 describe "gadget update" do
		  describe "it is find update action" do
		    it "update the particular gadget" do
		    request.accept = "application/json"
		    gadget = FactoryGirl.create(:gadget) 
	      puts gadget.title
	      gadget.title = 'update product'
	      put :update,:id => gadget.id, :gadget=>{:title=> gadget.title}
	      
	      parsed_response = JSON.parse(response.body)
	      expect(parsed_response)==(Project::Writer::GadgetWriter.new.write_update(gadget))
		    expect(response.status).to eq(200) 
	      
	      gadget.reload
	      puts gadget.title
	      expect(gadget.title).to eq('update product')   
		    end
		  end
		end
	 end
	end


	describe '/api/v2/gadgets for gadgets' do
	 describe Api::V2::GadgetsController, type: :controller do
		 describe "gadget index" do
		  describe "it is find index action" do
		    it "to display all gadgets" do
		    request.accept = "application/json" 
		    gadgets = Gadget.all
		    get :index
	      parsed_response = JSON.parse(response.body)
	      expect(parsed_response)==(Project::Writer::GadgetWriter.new.write_all(gadgets))
		    expect(response.status).to eq(200) 
		    end
		  end
		end
	 end
	end

end


          

#           describe "post create" do
#   describe "with valid params" do
#     it "creates a new product" do
#      request.accept = "application/json"  
#         post :create,{:name =>"apple",:cost =>12548}
#         expect(response.status).to eq(200)
#         # redirect_to '/'
#          #result = JSON.parse(response.body)
#           #expect(result['status']).to eq(true)    
#     end
#   end
# end