require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :password => "",
        :phone => "Phone",
        :full_name => "Full Name"
      ),
      User.create!(
        :email => "Email",
        :password => "",
        :phone => "Phone",
        :full_name => "Full Name"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
  end
end
