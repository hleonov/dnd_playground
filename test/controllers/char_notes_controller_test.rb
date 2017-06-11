require 'test_helper'

class CharNotesControllerTest < ActionController::TestCase
  setup do
    @char_note = char_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:char_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create char_note" do
    assert_difference('CharNote.count') do
      post :create, char_note: { character_id: @char_note.character_id, content: @char_note.content }
    end

    assert_redirected_to char_note_path(assigns(:char_note))
  end

  test "should show char_note" do
    get :show, id: @char_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @char_note
    assert_response :success
  end

  test "should update char_note" do
    patch :update, id: @char_note, char_note: { character_id: @char_note.character_id, content: @char_note.content }
    assert_redirected_to char_note_path(assigns(:char_note))
  end

  test "should destroy char_note" do
    assert_difference('CharNote.count', -1) do
      delete :destroy, id: @char_note
    end

    assert_redirected_to char_notes_path
  end
end
