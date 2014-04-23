require 'spec_helper'

describe "parents/new" do
  before(:each) do
    assign(:parent, stub_model(Parent,
      :first_name => "MyString",
      :last_name => "MyString",
      :case_number => "MyText",
      :address => "MyText",
      :city => "MyText",
      :state => "MyText",
      :zipcode => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parents_path, "post" do
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
