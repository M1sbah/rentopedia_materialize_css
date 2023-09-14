require "application_system_test_case"

class AdsTest < ApplicationSystemTestCase
  setup do
    @ad = ads(:one)
  end

  test "visiting the index" do
    visit ads_url
    assert_selector "h1", text: "Ads"
  end

  test "should create ad" do
    visit ads_url
    click_on "New ad"

    fill_in "Category", with: @ad.category_id
    fill_in "Desc", with: @ad.desc
    fill_in "Location", with: @ad.location
    fill_in "Price", with: @ad.price
    fill_in "Title", with: @ad.title
    fill_in "User", with: @ad.user_id
    click_on "Create Ad"

    assert_text "Ad was successfully created"
    click_on "Back"
  end

  test "should update Ad" do
    visit ad_url(@ad)
    click_on "Edit this ad", match: :first

    fill_in "Category", with: @ad.category_id
    fill_in "Desc", with: @ad.desc
    fill_in "Location", with: @ad.location
    fill_in "Price", with: @ad.price
    fill_in "Title", with: @ad.title
    fill_in "User", with: @ad.user_id
    click_on "Update Ad"

    assert_text "Ad was successfully updated"
    click_on "Back"
  end

  test "should destroy Ad" do
    visit ad_url(@ad)
    click_on "Destroy this ad", match: :first

    assert_text "Ad was successfully destroyed"
  end
end
