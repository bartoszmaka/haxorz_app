class SessionsController < Devise::SessionsController
  respond_to :json

  def create
    resource = User.find_for_database_authentication(:email=>params[:email])
    # return invalid_login_attempt unless resource
    return render json: { errors: { email: 'not found' } }, status: 422 unless resource

    if resource.valid_password?(params[:password])
      sign_in('user', resource)
      render_resource_with_token(resource)
      return 
    end
    validation_error(resource)
  end

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end
