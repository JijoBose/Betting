require "application_system_test_case"

class TeamMatchesTest < ApplicationSystemTestCase
  setup do
    @team_match = team_matches(:one)
  end

  test "visiting the index" do
    visit team_matches_url
    assert_selector "h1", text: "Team Matches"
  end

  test "creating a Team match" do
    visit team_matches_url
    click_on "New Team Match"

    fill_in "Match", with: @team_match.match_id
    fill_in "Score", with: @team_match.score
    fill_in "Team", with: @team_match.team_id
    click_on "Create Team match"

    assert_text "Team match was successfully created"
    click_on "Back"
  end

  test "updating a Team match" do
    visit team_matches_url
    click_on "Edit", match: :first

    fill_in "Match", with: @team_match.match_id
    fill_in "Score", with: @team_match.score
    fill_in "Team", with: @team_match.team_id
    click_on "Update Team match"

    assert_text "Team match was successfully updated"
    click_on "Back"
  end

  test "destroying a Team match" do
    visit team_matches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team match was successfully destroyed"
  end
end
