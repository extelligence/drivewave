require 'spec_helper'

describe "themes/index.html.erb" do
  before(:each) do
    assign(:themes, [
      stub_model(Theme,
        :title => "Title",
        :user_id => 1
      ),
      stub_model(Theme,
        :title => "Title",
        :user_id => 1
      )
    ])
  end

  it "renders a list of themes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
