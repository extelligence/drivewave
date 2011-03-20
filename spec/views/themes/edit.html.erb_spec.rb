require 'spec_helper'

describe "themes/edit.html.erb" do
  before(:each) do
    @theme = assign(:theme, stub_model(Theme,
      :title => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit theme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => themes_path(@theme), :method => "post" do
      assert_select "input#theme_title", :name => "theme[title]"
      assert_select "input#theme_user_id", :name => "theme[user_id]"
    end
  end
end
