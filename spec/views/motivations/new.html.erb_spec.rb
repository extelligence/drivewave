require 'spec_helper'

describe "motivations/new.html.erb" do
  before(:each) do
    assign(:motivation, stub_model(Motivation,
      :theme_id => 1,
      :user_id => 1,
      :energy => 1,
      :comment => "MyString"
    ).as_new_record)
  end

  it "renders new motivation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => motivations_path, :method => "post" do
      assert_select "input#motivation_theme_id", :name => "motivation[theme_id]"
      assert_select "input#motivation_user_id", :name => "motivation[user_id]"
      assert_select "input#motivation_energy", :name => "motivation[energy]"
      assert_select "input#motivation_comment", :name => "motivation[comment]"
    end
  end
end
