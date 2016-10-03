class ClientController < ApplicationController

  def index
    @client = Client.all
  end
  
    
  
end


