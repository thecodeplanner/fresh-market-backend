class ItemsController < ApplicationController

    def index 
        @items = Item.all
        render json: @items
    end

    def create
        current_user = User.first

        @item = current_user.items.create!(item_params)
        if @item.valid?
            render json: @item
        else
            render json: {error: @item.errors.full_messages}, status: :unprocessable_entity
        end
         
    end 

    def show
        @item = Item.find_by(id: params[:id]) 
        if @item
            render json: @item
        else 
            render json: {error: 'Item not found'}
        end
    end
    
    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        render json: @item
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        render json: @item
    end

    private

    def item_params
        params.permit(:name, :description, :price, :image, :quantity, :user_id, :category_id)
    end

end
