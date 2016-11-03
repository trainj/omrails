class OitemsController < ApplicationController
  before_action :set_oitem, only: [:show, :edit, :update, :destroy]

  # GET /oitems
  # GET /oitems.json
  def index
    @oitems = Oitem.all
  end

  # GET /oitems/1
  # GET /oitems/1.json
  def show
  end

  # GET /oitems/new
  def new
    @oitem = Oitem.new
  end

  # GET /oitems/1/edit
  def edit
  end

  # POST /oitems
  # POST /oitems.json
  def create
    @oitem = Oitem.new(oitem_params)

    respond_to do |format|
      if @oitem.save
        format.html { redirect_to @oitem, notice: 'Oitem was successfully created.' }
        format.json { render :show, status: :created, location: @oitem }
      else
        format.html { render :new }
        format.json { render json: @oitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oitems/1
  # PATCH/PUT /oitems/1.json
  def update
    respond_to do |format|
      if @oitem.update(oitem_params)
        format.html { redirect_to @oitem, notice: 'Oitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @oitem }
      else
        format.html { render :edit }
        format.json { render json: @oitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oitems/1
  # DELETE /oitems/1.json
  def destroy
    @oitem.destroy
    respond_to do |format|
      format.html { redirect_to oitems_url, notice: 'Oitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oitem
      @oitem = Oitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oitem_params
      params.require(:oitem).permit(:user_id, :title, :url, :text)
    end
end
