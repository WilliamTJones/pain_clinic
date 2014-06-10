require 'spec_helper'

describe "user_permissions/edit" do
  before(:each) do
    @user_permission = assign(:user_permission, stub_model(UserPermission,
      :description => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit user_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_permission_path(@user_permission), "post" do
      assert_select "input#user_permission_description[name=?]", "user_permission[description]"
    end
  end
end
