require 'jwt'
class User < ApplicationRecord
  has_many :devise_tokens
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def genrate_device_token
    devise_tokens.create(auth_token: Jwt.new(id, nil).generate_token)
  end
end
