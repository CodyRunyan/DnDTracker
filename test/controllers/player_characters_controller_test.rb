require 'test_helper'

class PlayerCharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_character = player_characters(:one)
  end

  test "should get index" do
    get player_characters_url
    assert_response :success
  end

  test "should get new" do
    get new_player_character_url
    assert_response :success
  end

  test "should create player_character" do
    assert_difference('PlayerCharacter.count') do
      post player_characters_url, params: { player_character: { ac: @player_character.ac, character_name: @player_character.character_name, hp: @player_character.hp, image_data: @player_character.image_data, player_name: @player_character.player_name } }
    end

    assert_redirected_to player_character_url(PlayerCharacter.last)
  end

  test "should show player_character" do
    get player_character_url(@player_character)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_character_url(@player_character)
    assert_response :success
  end

  test "should update player_character" do
    patch player_character_url(@player_character), params: { player_character: { ac: @player_character.ac, character_name: @player_character.character_name, hp: @player_character.hp, image_data: @player_character.image_data, player_name: @player_character.player_name } }
    assert_redirected_to player_character_url(@player_character)
  end

  test "should destroy player_character" do
    assert_difference('PlayerCharacter.count', -1) do
      delete player_character_url(@player_character)
    end

    assert_redirected_to player_characters_url
  end
end
