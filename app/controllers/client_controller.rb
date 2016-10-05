class ClientController < ApplicationController

  def index
    @client = Client.all
		respond_to do |format|
      format.html
      format.pdf do
        render pdf:          "Invoice.pdf",
               disposition:  'attachment', # default 'inline'
               template:     'client/index.html.erb'
      end
    end
  end

  def print_view
	  @client_all = Client.where(:id => params[:id])
	  respond_to do |format|
	    format.html
	    format.pdf do
	      render :pdf         => "file_name",
	             :template    => "client/index.html.erb",
	             :disposition =>  'attachment'
	    end
	  end
	end


 
	def show
	  respond_to do |format|
	    format.pdf do
	      render :pdf => "file_name.pdf", :template => 'file_directory/file_name.html.erb', :encoding => 'utf-8'
	    end
	    format.html
	  end 
	end
  

  
end


