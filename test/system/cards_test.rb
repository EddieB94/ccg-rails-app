require "application_system_test_case"

class CardsTest < ApplicationSystemTestCase
  setup do
    @card = cards(:one)
  end

  test "visiting the index" do
    visit cards_url
    assert_selector "h1", text: "Cards"
  end

  test "creating a Card" do
    visit cards_url
    click_on "New Card"

    fill_in "Artist", with: @card.artist
    fill_in "Cost", with: @card.cost
    fill_in "Identity", with: @card.identity
    fill_in "Name", with: @card.name
    fill_in "Power", with: @card.power
    fill_in "Rarity", with: @card.rarity
    fill_in "Set", with: @card.set
    fill_in "Title", with: @card.title
    fill_in "Toughness", with: @card.toughness
    fill_in "Type", with: @card.type
    click_on "Create Card"

    assert_text "Card was successfully created"
    click_on "Back"
  end

  test "updating a Card" do
    visit cards_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @card.artist
    fill_in "Cost", with: @card.cost
    fill_in "Identity", with: @card.identity
    fill_in "Name", with: @card.name
    fill_in "Power", with: @card.power
    fill_in "Rarity", with: @card.rarity
    fill_in "Set", with: @card.set
    fill_in "Title", with: @card.title
    fill_in "Toughness", with: @card.toughness
    fill_in "Type", with: @card.type
    click_on "Update Card"

    assert_text "Card was successfully updated"
    click_on "Back"
  end

  test "destroying a Card" do
    visit cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Card was successfully destroyed"
  end
end
