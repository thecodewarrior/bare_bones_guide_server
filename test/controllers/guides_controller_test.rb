require 'test_helper'

class GuidesControllerTest < ActionController::TestCase
  setup do
    @guide = guides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guide" do
    assert_difference('Guide.count') do
      post :create, guide: { content: @guide.content, guide_image_id: @guide.guide_image_id, guide_pack_version_id: @guide.guide_pack_version_id, manifest_version: @guide.manifest_version, path: @guide.path, title: @guide.title }
    end

    assert_redirected_to guide_path(assigns(:guide))
  end

  test "should show guide" do
    get :show, id: @guide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guide
    assert_response :success
  end

  test "should update guide" do
    patch :update, id: @guide, guide: { content: @guide.content, guide_image_id: @guide.guide_image_id, guide_pack_version_id: @guide.guide_pack_version_id, manifest_version: @guide.manifest_version, path: @guide.path, title: @guide.title }
    assert_redirected_to guide_path(assigns(:guide))
  end

  test "should destroy guide" do
    assert_difference('Guide.count', -1) do
      delete :destroy, id: @guide
    end

    assert_redirected_to guides_path
  end
end
