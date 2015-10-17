require 'json'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	data = read_json_data
  	@sheroes = data.map{|shero| Shero.new(JSON.parse(shero))}
  end

  def read_json_data
  	path = "#{RAILS_ROOT}/app/assets/json/Women.json"
  	file = File.read(path)
  	JSON.parse(file)
  end
  
end


