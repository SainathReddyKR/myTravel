require 'test_helper'

class VehicleAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_attachment = vehicle_attachments(:one)
  end

  test "should get index" do
    get vehicle_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_attachment_url
    assert_response :success
  end

  test "should create vehicle_attachment" do
    assert_difference('VehicleAttachment.count') do
      post vehicle_attachments_url, params: { vehicle_attachment: { avatar: @vehicle_attachment.avatar, passengerride_id: @vehicle_attachment.passengerride_id } }
    end

    assert_redirected_to vehicle_attachment_url(VehicleAttachment.last)
  end

  test "should show vehicle_attachment" do
    get vehicle_attachment_url(@vehicle_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_attachment_url(@vehicle_attachment)
    assert_response :success
  end

  test "should update vehicle_attachment" do
    patch vehicle_attachment_url(@vehicle_attachment), params: { vehicle_attachment: { avatar: @vehicle_attachment.avatar, passengerride_id: @vehicle_attachment.passengerride_id } }
    assert_redirected_to vehicle_attachment_url(@vehicle_attachment)
  end

  test "should destroy vehicle_attachment" do
    assert_difference('VehicleAttachment.count', -1) do
      delete vehicle_attachment_url(@vehicle_attachment)
    end

    assert_redirected_to vehicle_attachments_url
  end
end
