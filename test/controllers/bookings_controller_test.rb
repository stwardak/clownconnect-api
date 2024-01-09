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
end
