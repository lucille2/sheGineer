class PublicController < ApplicationController
  def index
  	data = read_json_data
  	@sheroes = data.map{|shero| Shero.new(JSON.parse(shero))}
  end

   def about
   end

   def mysheroes
   end

   def learn
   end

  def read_json_data
  	path = "#{Rails.root}/app/assets/json/Women.json"
  	file = File.read(path)
  	JSON.parse(file)
  end

end
