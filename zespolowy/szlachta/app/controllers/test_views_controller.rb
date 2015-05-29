class TestViewsController < ApplicationController
  before_action :set_test_view, only: [:show, :edit, :update, :destroy]

  # GET /test_views
  # GET /test_views.json
  def index
    @test_views = TestView.all
  end

  # GET /test_views/1
  # GET /test_views/1.json
  def show
  end

  # GET /test_views/new
  def new
    @test_view = TestView.new
  end

  # GET /test_views/1/edit
  def edit
  end

  # POST /test_views
  # POST /test_views.json
  def create
    @test_view = TestView.new(test_view_params)

    respond_to do |format|
      if @test_view.save
        format.html { redirect_to @test_view, notice: 'Test view was successfully created.' }
        format.json { render :show, status: :created, location: @test_view }
      else
        format.html { render :new }
        format.json { render json: @test_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_views/1
  # PATCH/PUT /test_views/1.json
  def update
    respond_to do |format|
      if @test_view.update(test_view_params)
        format.html { redirect_to @test_view, notice: 'Test view was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_view }
      else
        format.html { render :edit }
        format.json { render json: @test_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_views/1
  # DELETE /test_views/1.json
  def destroy
    @test_view.destroy
    respond_to do |format|
      format.html { redirect_to test_views_url, notice: 'Test view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_view
      @test_view = TestView.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_view_params
      params.require(:test_view).permit(:Sala, :Klucz, :Pracownik, :Pilot, :Kabel, :Godzin_pobrania, :Godzina_oddania)
    end
end
