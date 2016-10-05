class ProductsController < ApplicationController

 	require "prawn"
  require "prawn/table"

  def download_pdf
    @product = Products.all
    puts "coming to product"
    puts @product.inspect
    puts @product.count
    puts "@product"
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        table_data = Array.new
        table_data << ["Product name", "Product category"]
        @product.each do |p|
            table_data << [p.product_name, p.product_category]
        end
        pdf.table(table_data, :width => 500, :cell_style => { :inline_format => true })
        send_data pdf.render, filename: 'test.pdf', type: 'application/pdf', :disposition => 'inline'
      end
    end
  end

end

