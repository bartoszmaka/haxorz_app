class ApplicationController < ActionController::API
  def render_resource_with_token(resource)
    if resource.errors.empty?
      token = JwtService.encode(payload: resource.to_json)
      render json: {
        id: resource.id,
        email: resource.email,
        first_name: resource.firstname,
        last_name: resource.lastname,
        token: token,
      }
    else
      validation_error(resource)
    end
  end

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '403',
          title: 'forbidden',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :forbidden
  end
end
