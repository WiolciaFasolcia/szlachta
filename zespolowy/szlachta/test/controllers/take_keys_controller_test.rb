require 'test_helper'

class TakeKeysControllerTest < ActionController::TestCase
  setup do
    @take_key = take_keys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:take_keys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create take_key" do
    assert_difference('TakeKey.count') do
      post :create, take_key: { godzina_oddania: @take_key.godzina_oddania, godzina_pobrania: @take_key.godzina_pobrania, nazwa_sali: @take_key.nazwa_sali, osoba_pobierajaca: @take_key.osoba_pobierajaca, rodzaj_klucza: @take_key.rodzaj_klucza }
    end

    assert_redirected_to take_key_path(assigns(:take_key))
  end

  test "should show take_key" do
    get :show, id: @take_key
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @take_key
    assert_response :success
  end

  test "should update take_key" do
    patch :update, id: @take_key, take_key: { godzina_oddania: @take_key.godzina_oddania, godzina_pobrania: @take_key.godzina_pobrania, nazwa_sali: @take_key.nazwa_sali, osoba_pobierajaca: @take_key.osoba_pobierajaca, rodzaj_klucza: @take_key.rodzaj_klucza }
    assert_redirected_to take_key_path(assigns(:take_key))
  end

  test "should destroy take_key" do
    assert_difference('TakeKey.count', -1) do
      delete :destroy, id: @take_key
    end

    assert_redirected_to take_keys_path
  end
end
