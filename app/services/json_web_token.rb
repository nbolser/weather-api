class JsonWebTokenService
  class << self
    def encode(payload)
      expiration = 30.minutes.from_now.to_i
      JWT.encode(payload.merge(exp: expiration),
                               Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      JWT.decode(token, Rails.application.secrets.secret_key_base).first
    end

  end
end