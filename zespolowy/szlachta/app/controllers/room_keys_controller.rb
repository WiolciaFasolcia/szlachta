class RoomKeysController < BaseController
  before_action :set_room_key, only: [:show, :edit, :update, :destroy]

  # GET /room_keys
  # GET /room_keys.json
  def index
    @room_keys = RoomKey.paginate(:page => params[:page], :per_page => 6)
  end

  # GET /room_keys/1
  # GET /room_keys/1.json
  def show
  end

  # GET /room_keys/new
  def new
    @room_key = RoomKey.new
  end

  # GET /room_keys/1/edit
  def edit
  end

  # POST /room_keys
  # POST /room_keys.json
  def create
    @room_key = RoomKey.new(room_key_params)

    respond_to do |format|
      if @room_key.save
        format.html { redirect_to room_keys_url, notice: 'Room key was successfully created.' }
        format.json { render :show, status: :created, location: @room_key }
      else
        format.html { render :new }
        format.json { render json: @room_key.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

    @room_key = RoomKey.find(params[:id])
  end

  # PATCH/PUT /room_keys/1
  # PATCH/PUT /room_keys/1.json
  def update
    respond_to do |format|
      if @room_key.update(room_key_params)
        format.html { redirect_to @room_key, notice: 'Room key was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_key }
      else
        format.html { render :edit }
        format.json { render json: @room_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_keys/1
  # DELETE /room_keys/1.json
  def destroy
    @room_key.destroy
    respond_to do |format|
      format.html { redirect_to room_keys_url, notice: 'Room key was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_key
      @room_key = RoomKey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_key_params
      params.require(:room_key).permit(:klucz, :zapasowy, :room_id)
    end
end
