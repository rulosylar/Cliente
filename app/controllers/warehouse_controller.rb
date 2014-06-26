require "json"

class WarehouseController < ApplicationController
  def index
  	@items = Item.all
  end

  def updateItems
  	items = JSON.parse(params[:items])

  	items.each do |item|

  		Rails.logger.info(item)

  		@item = Item.find_or_create_by(:rfid => item["id"])
  		@item.update_attributes(:antenna => item["antenaId"])
  		@item.save
  	end

  	@items = Item.all

  	respond_to do |format|
  		format.html { render action: "index" }
  	# 	format.json { render json: @hola }
  	end
  end
end
