class EmployeeRoomsController < BaseController
  before_action :set_employee_room, only: [:show, :edit, :update, :destroy]

  # GET /employee_rooms
  # GET /employee_rooms.json
  def index
    @employee_rooms = EmployeeRoom.all
  end

  # GET /employee_rooms/1
  # GET /employee_rooms/1.json
  def show
  end

  # GET /employee_rooms/new
  def new
    @employee_room = EmployeeRoom.new
  end

  # GET /employee_rooms/1/edit
  def edit
  end

  # POST /employee_rooms
  # POST /employee_rooms.json
  def create
    @employee_room = EmployeeRoom.new(employee_room_params)

    respond_to do |format|
      if @employee_room.save
        format.html { redirect_to @employee_room, notice: 'Employee room was successfully created.' }
        format.json { render :show, status: :created, location: @employee_room }
      else
        format.html { render :new }
        format.json { render json: @employee_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_rooms/1
  # PATCH/PUT /employee_rooms/1.json
  def update
    respond_to do |format|
      if @employee_room.update(employee_room_params)
        format.html { redirect_to @employee_room, notice: 'Employee room was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_room }
      else
        format.html { render :edit }
        format.json { render json: @employee_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_rooms/1
  # DELETE /employee_rooms/1.json
  def destroy
    @employee_room.destroy
    respond_to do |format|
      format.html { redirect_to employee_rooms_url, notice: 'Employee room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_room
      @employee_room = EmployeeRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_room_params
      params.require(:employee_room).permit(:employee_id, :room_id)
    end
end
