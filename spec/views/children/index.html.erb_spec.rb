require 'spec_helper'

describe "children/index" do
  before(:each) do
    assign(:children, [
      stub_model(Child,
        :first_name => "First Name",
        :last_name => "Last Name",
        :birthday => "Birthday",
        :gender => "Gender",
        :parent => nil
      ),
      stub_model(Child,
        :first_name => "First Name",
        :last_name => "Last Name",
        :birthday => "Birthday",
        :gender => "Gender",
        :parent => nil
      )
    ])
  end

  it "renders a list of children" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Birthday".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
