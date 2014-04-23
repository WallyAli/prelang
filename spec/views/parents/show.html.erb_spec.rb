require 'spec_helper'

describe "parents/show" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent,
      :first_name => "First Name",
      :last_name => "Last Name",
      :case_number => "MyText",
      :address => "MyText",
      :city => "MyText",
      :state => "MyText",
      :zipcode => "Zipcode",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Zipcode/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
  end
end
