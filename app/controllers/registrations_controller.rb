class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    build_resource(sign_up_params)

    resource.save
    render_resource_with_token(resource)
  end

  private

  def sign_up_params
    params.permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end
end
