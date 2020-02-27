require "application_system_test_case"

class DiariesTest < ApplicationSystemTestCase
  setup do
    @diary = diaries(:one)
  end

  test "visiting the index" do
    visit diaries_url
    assert_selector "h1", text: "Diaries"
  end

  test "creating a Diary" do
    visit diaries_url
    click_on "New Diary"

    fill_in "Body", with: @diary.body
    fill_in "Title", with: @diary.title
    click_on "新規登録"

    assert_text "Diary was successfully created"
    click_on "Back"
  end

  test "updating a Diary" do
    visit diaries_url
    click_on "Edit", match: :first

    fill_in "Body", with: @diary.body
    fill_in "Title", with: @diary.title
    click_on "編集登録"

    assert_text "Diary was successfully updated"
    click_on "Back"
  end

  test "destroying a Diary" do
    visit diaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diary was successfully destroyed"
  end
end
