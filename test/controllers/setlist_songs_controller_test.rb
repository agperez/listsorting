require 'test_helper'

class SetlistSongsControllerTest < ActionController::TestCase
  setup do
    @setlist_song = setlist_songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:setlist_songs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create setlist_song" do
    assert_difference('SetlistSong.count') do
      post :create, setlist_song: {  }
    end

    assert_redirected_to setlist_song_path(assigns(:setlist_song))
  end

  test "should show setlist_song" do
    get :show, id: @setlist_song
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @setlist_song
    assert_response :success
  end

  test "should update setlist_song" do
    patch :update, id: @setlist_song, setlist_song: {  }
    assert_redirected_to setlist_song_path(assigns(:setlist_song))
  end

  test "should destroy setlist_song" do
    assert_difference('SetlistSong.count', -1) do
      delete :destroy, id: @setlist_song
    end

    assert_redirected_to setlist_songs_path
  end
end
