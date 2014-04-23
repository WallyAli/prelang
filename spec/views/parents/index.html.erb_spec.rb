require 'spec_helper'

describe "parents/index" do
  before(:each) do
    assign(:parents, [
      stub_model(Parent,
        :first_name => "First Name",
        :last_name => "Last Name",
        :case_number => "MyText",
        :address => "MyText",
        :city => "MyText",
        :state => "MyText",
        :zipcode => "Zipcode",
        :email => "Email",
        :phone => "Phone"
      ),
      stub_model(Parent,
        :first_name => "First Name",
        :last_name => "Last Name",
        :case_number => "MyText",
        :address => "MyText",
        :city => "MyText",
        :state => "MyText",
        :zipcode => "Zipcode",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of parents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
