class TakeKeysController < ApplicationController
  before_action :set_take_key, only: [:show, :edit, :update, :destroy]

  # GET /take_keys
  # GET /take_keys.json
  def index
     
     @take_keys = TakeKey.order('godzina_pobrania desc, godzina_oddania desc').paginate(:page => params[:page], :per_page => 6)
  end

  # GET /take_keys/1
  # GET /take_keys/1.json
  def show
  end

  # GET /take_keys/new
  def new
    @take_key = TakeKey.new
  end

  # GET /take_keys/1/edit
  def edit
  end

  # POST /take_keys
  # POST /take_keys.json
  def create
    @take_key = TakeKey.new(take_key_params)

    respond_to do |format|
      if @take_key.save
        format.html { redirect_to take_keys_url, notice: 'Take key was successfully created.' }
        format.json { render :show, status: :created, location: @take_key }
      else
        format.html { render :new }
        format.json { render json: @take_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /take_keys/1
  # PATCH/PUT /take_keys/1.json
  def update
    respond_to do |format|
      if @take_key.update(take_key_params)
        format.html { redirect_to take_keys_url, notice: 'Take key was successfully updated.' }
        format.json { render :show, status: :ok, location: @take_key }
      else
        format.html { render :edit }
        format.json { render json: @take_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /take_keys/1
  # DELETE /take_keys/1.json
  def destroy
    @take_key.destroy
    respond_to do |format|
      format.html { redirect_to take_keys_url, notice: 'Take key was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_take_key
      @take_key = TakeKey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def take_key_params
      params.require(:take_key).permit(:nazwa_sali, :rodzaj_klucza, :osoba_pobierajaca, :godzina_pobrania, :godzina_oddania, :room_id, :room_key_id, :employee_id)
    end
end
