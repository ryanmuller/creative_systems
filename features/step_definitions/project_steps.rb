Given /^There is a project called "(.*)"$/ do |project|
  Project.new(:name => project)
end
