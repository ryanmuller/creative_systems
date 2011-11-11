When /^I leave the comment "(.*)"$/ do |comment|
  fill_in("Comment", { :with => comment })
  click_button("Leave comment")
end

Then /^I should see the comment "(.*)"$/ do |comment|
  within('#comments') do
    page.should have_content(comment)
  end
end


