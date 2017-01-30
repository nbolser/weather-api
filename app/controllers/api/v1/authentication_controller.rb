class Api::V1::AuthenticationController < Api::V1::ApiController
  attr_reader :user

  skip_before_action :authenticate_token!

  def create
    @user = User.find_by(email: params[:user][:email])

    if user.valid_password?(params[:user][:password])
      render json: { token: JsonWebToken.encode(sub: user.id) }
    else
      render json: { errors: ['Invalid user or password'] }
    end
  end

end
