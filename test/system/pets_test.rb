require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  test "viewing the index" do
    view pets_path

    assert_selector "h1", text: "Pets"
  end
end
