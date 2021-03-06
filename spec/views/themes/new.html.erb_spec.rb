require 'spec_helper'

describe "themes/new.html.erb" do
  before(:each) do
    assign(:theme, stub_model(Theme,
      :title => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new theme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => themes_path, :method => "post" do
      assert_select "input#theme_title", :name => "theme[title]"
      assert_select "input#theme_user_id", :name => "theme[user_id]"
    end
  end
end
