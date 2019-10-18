require 'test_helper'

class ClosestStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @closest_station = closest_stations(:one)
  end

  test "should get index" do
    get closest_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_closest_station_url
    assert_response :success
  end

  test "should create closest_station" do
    assert_difference('ClosestStation.count') do
      post closest_stations_url, params: { closest_station: { on_foot: @closest_station.on_foot, route: @closest_station.route, station: @closest_station.station } }
    end

    assert_redirected_to closest_station_url(ClosestStation.last)
  end

  test "should show closest_station" do
    get closest_station_url(@closest_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_closest_station_url(@closest_station)
    assert_response :success
  end

  test "should update closest_station" do
    patch closest_station_url(@closest_station), params: { closest_station: { on_foot: @closest_station.on_foot, route: @closest_station.route, station: @closest_station.station } }
    assert_redirected_to closest_station_url(@closest_station)
  end

  test "should destroy closest_station" do
    assert_difference('ClosestStation.count', -1) do
      delete closest_station_url(@closest_station)
    end

    assert_redirected_to closest_stations_url
  end
end
