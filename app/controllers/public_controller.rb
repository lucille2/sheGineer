class PublicController < ApplicationController
  def index
  	@sheroes = read_json_data.map do |shero|
  		Shero.new(shero)
  	end
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
  	data = JSON.parse(file)
  	data['womenInTech']
  end

end
