Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['866168363764565'], ENV['1dee036317fc78be52176fc12a0a94c8'], info_fields: 'first_name, last_name, gender'
  
end
# config.omniauth :facebook, '866168363764565', '1dee036317fc78be52176fc12a0a94c8'
# , last_name, gender
