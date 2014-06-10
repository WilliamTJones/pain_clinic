require 'spec_helper'

describe "user_permissions/new" do
  before(:each) do
    assign(:user_permission, stub_model(UserPermission,
      :description => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new user_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_permissions_path, "post" do
      assert_select "input#user_permission_description[name=?]", "user_permission[description]"
    end
  end
end
