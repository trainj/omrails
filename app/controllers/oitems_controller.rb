class OitemsController < ApplicationController
  before_action :set_oitem, only: [:show, :edit, :update, :destroy]

  # GET /oitems
  def index
    @oitems = Oitem.all
  end

  # GET /oitems/1
  def show
    @oitem = Oitem.find(params[:id])
  end

  # GET /oitems/new
  def new
      @oitem = current_user.oitems.new
  end

  # GET /oitems/1/edit
  def edit
      @oitem = current_user.oitems.find(params[:id])
  end

  # POST /oitems
  def create
      @oitem = current_user.oitems.new(oitem_params)
    if @oitem.save
      redirect_to @oitem, notice: 'Oitem was successfully created.' 
    else
      render :new 
    end
  end

  # PATCH/PUT /oitems/1
  def update
      @oitem = current_user.oitems.find(params[:id])
    if @oitem.update(oitem_params)
     redirect_to @oitem, notice: 'Oitem was successfully updated.' 
    else
     render :edit 
    end
  end

  # DELETE /oitems/1
  def destroy
      @oitem = current_user.oitems.find(params[:id])
    @oitem.destroy
    redirect_to oitems_url, notice: 'Oitem was successfully destroyed.' 
  end

  private
    def set_oitem
      @oitem = Oitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oitem_params
      params.require(:oitem).permit(:title, :url, :text)
    end
end
