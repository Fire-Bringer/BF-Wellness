# config/initializers/cloudinary.rb

cloudinary_url = URI.parse(ENV['CLOUDINARY_URL'])
Cloudinary.config do |config|
  config.cloud_name = cloudinary_url.host
  config.api_key = cloudinary_url.user
  config.api_secret = cloudinary_url.password
  config.secure = true # Optionally, enable secure HTTPS URLs
end
