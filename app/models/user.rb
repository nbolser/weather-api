class User < ActiveRecord::Base
  has_secure_password

  def to_token_payload
    {
      sub: id,
      admin: true,
      email: email
    }
  end

end
