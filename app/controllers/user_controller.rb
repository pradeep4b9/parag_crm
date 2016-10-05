class UserController < ApplicationController


	def index_pdf
		render :pdf => “my_pdf”,
			:layout => false,
			:template => ‘/users/index_pdf’,
			:footer => {:center =>“Center”, :left => “Left”, :right => “Right”}
		end
	end