class SessionsController < Devise::SessionsController
# before_action :authenticate_admin!, :except => :create

 def new
    super
 end
def create
  self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    if !session[:return_to].blank?
      redirect_to session[:return_to]
      session[:return_to] = nil
    else
        super
    end

end

def destroy
    super
  end



end