class JwtService
  def self.encode(payload:)
    JWT.encode(payload, self.secret)
  end

  def self.decode(token:)
    token = token.split.last
    JWT.decode token, self.secret, true, { algorithm: 'HS256' }
  end

  def self.decoded_jwt_token_from_response(response)
    token = response.headers['Authorization']
    token.split.last
    JwtService.decode(token: token)
  end

  def self.secret
    ENV['DEVISE_JWT_SECRET_KEY']
  end
end
