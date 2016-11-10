class VotesController < ApplicationController
    before_action :authenticate_user!
    def create
        oitem = Oitem.find(params[:id])
        oitem.liked_by current_user
        redirect_to oitems_path, notice: "You successfully voted for an Oitem!"
    end
    
    def destroy
        oitem = Oitem.find(params[:id])
        oitem.unliked_by current_user
        redirect_to oitems_path, notice: "You successfully unvoted for an Oitem!"

    end
end
