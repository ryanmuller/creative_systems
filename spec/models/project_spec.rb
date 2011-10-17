require 'spec_helper'

describe Project do

  before(:each) do
    @attr = {
      :name => "Example Project"
    }
  end

  it "should create a new instance given a valid attribute" do
    Project.create!(@attr)
  end


  it "should require a name" do
    no_name_project = Project.new(@attr.merge(:name => ""))
    no_name_project.should_not be_valid
  end

  it "should reject duplicate names" do
    Project.create!(@attr)
    project_with_duplicate_name = Project.new(@attr)
    project_with_duplicate_name.should_not be_valid
  end
end
