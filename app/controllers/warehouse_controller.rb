class WarehouseController < ApplicationController
  def index
  	@items = Item.all
  end
end
