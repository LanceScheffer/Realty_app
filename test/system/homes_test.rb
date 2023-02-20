require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  setup do
    @home = homes(:one)
  end

  test "visiting the index" do
    visit homes_url
    assert_selector "h1", text: "Homes"
  end

  test "should create home" do
    visit homes_url
    click_on "New home"

    fill_in "Address", with: @home.address
    fill_in "Baths", with: @home.baths
    fill_in "Bedrooms", with: @home.bedrooms
    fill_in "Listing date", with: @home.listing_date
    fill_in "Price", with: @home.price
    fill_in "Size", with: @home.size
    fill_in "State", with: @home.state
    fill_in "Year built", with: @home.year_built
    click_on "Create Home"

    assert_text "Home was successfully created"
    click_on "Back"
  end

  test "should update Home" do
    visit home_url(@home)
    click_on "Edit this home", match: :first

    fill_in "Address", with: @home.address
    fill_in "Baths", with: @home.baths
    fill_in "Bedrooms", with: @home.bedrooms
    fill_in "Listing date", with: @home.listing_date
    fill_in "Price", with: @home.price
    fill_in "Size", with: @home.size
    fill_in "State", with: @home.state
    fill_in "Year built", with: @home.year_built
    click_on "Update Home"

    assert_text "Home was successfully updated"
    click_on "Back"
  end

  test "should destroy Home" do
    visit home_url(@home)
    click_on "Destroy this home", match: :first

    assert_text "Home was successfully destroyed"
  end
end
