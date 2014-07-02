require "json"

class WarehouseController < ApplicationController
  def index
  	@items = Item.valid
  end

  def updateItems
    @items = Item.unread
    @items.each do |item|
      @item = Item.find(item)
      @item.update_attribute(:flag, "noleido")
      @item.save
    end
  	items = JSON.parse(params[:items])

  	items.each do |item|

  		Rails.logger.info(item)

  		@item = Item.find_or_create_by(:rfid => item["id"])
      @item.update_attribute(:flag, "leido")
  		@item.update_attribute(:antenna, item["antenaId"])
  		@item.save
  	end

  	@items = Item.read

  	respond_to do |format|
  		format.html { render action: "index" }
  	# 	format.json { render json: @hola }
  	end
  end
end
