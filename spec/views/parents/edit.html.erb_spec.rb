require 'spec_helper'

describe "parents/edit" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent,
      :first_name => "MyString",
      :last_name => "MyString",
      :case_number => "MyText",
      :address => "MyText",
      :city => "MyText",
      :state => "MyText",
      :zipcode => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parent_path(@parent), "post" do
      assert_select "input#parent_first_name[name=?]", "parent[first_name]"
      assert_select "input#parent_last_name[name=?]", "parent[last_name]"
      assert_select "textarea#parent_case_number[name=?]", "parent[case_number]"
      assert_select "textarea#parent_address[name=?]", "parent[address]"
      assert_select "textarea#parent_city[name=?]", "parent[city]"
      assert_select "textarea#parent_state[name=?]", "parent[state]"
      assert_select "input#parent_zipcode[name=?]", "parent[zipcode]"
      assert_select "input#parent_email[name=?]", "parent[email]"
      assert_select "input#parent_phone[name=?]", "parent[phone]"
    end
  end
end
