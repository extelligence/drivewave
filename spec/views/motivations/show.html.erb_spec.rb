require 'spec_helper'

describe "motivations/show.html.erb" do
  before(:each) do
    @motivation = assign(:motivation, stub_model(Motivation,
      :theme_id => 1,
      :user_id => 1,
      :energy => 1,
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
  end
end
