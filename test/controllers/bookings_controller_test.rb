require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/bookings.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Booking.count, data.length
  end

  test "create" do
    assert_difference "Booking.count", 1 do
      post "/bookings.json", params: { clown_id: Clown.first.id, user_id: User.first.id, date: "01-01-2099", time: "12:00:00", preferences: "preferences text" }
      assert_response 200
    end
  end

end
