require 'test_helper'

class TestViewsControllerTest < ActionController::TestCase
  setup do
    @test_view = test_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_view" do
    assert_difference('TestView.count') do
      post :create, test_view: { Godzin_pobrania: @test_view.Godzin_pobrania, Godzina_oddania: @test_view.Godzina_oddania, Kabel: @test_view.Kabel, Klucz: @test_view.Klucz, Pilot: @test_view.Pilot, Pracownik: @test_view.Pracownik, Sala: @test_view.Sala }
    end

    assert_redirected_to test_view_path(assigns(:test_view))
  end

  test "should show test_view" do
    get :show, id: @test_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_view
    assert_response :success
  end

  test "should update test_view" do
    patch :update, id: @test_view, test_view: { Godzin_pobrania: @test_view.Godzin_pobrania, Godzina_oddania: @test_view.Godzina_oddania, Kabel: @test_view.Kabel, Klucz: @test_view.Klucz, Pilot: @test_view.Pilot, Pracownik: @test_view.Pracownik, Sala: @test_view.Sala }
    assert_redirected_to test_view_path(assigns(:test_view))
  end

  test "should destroy test_view" do
    assert_difference('TestView.count', -1) do
      delete :destroy, id: @test_view
    end

    assert_redirected_to test_views_path
  end
end
