Given /^no user exists with an email of "(.*)"$/ do |email|
  User.find(:first, :conditions => { :email => email }).should be_nil
end


Then /^I should be already signed in$/ do
  And %{I should see "Logout"}
end

Then /^I sign out$/ do
  visit('/users/sign_out')
end

Given /^I am logout$/ do
  Given %{I sign out}
end

Given /^I am not logged in$/ do
  Given %{I sign out}
end

When /^I sign in as "(.*)\/(.*)"$/ do |email, password|
  Given %{I am not logged in}
  When %{I go to the sign in page}
  fill_in("Email", { :with => email })
  fill_in("Password", { :with => password })
  click_button("Sign in")
end

Given /^I am signed in$/ do
  Factory.create(:user, { :name => "Signed in user",
                          :email => "user@test.com",
                          :password => "please" })
  visit('/users/sign_in')
  fill_in("Email", { :with => "user@test.com" })
  fill_in("Password", { :with => "please" })
  click_button("Sign in")
  Then %{I should be signed in}
end

Then /^I should be signed in$/ do
  Then %{I should see "Signed in successfully."}
end

When /^I return next time$/ do
  And %{I go to the home page}
end

Then /^I should be signed out$/ do
  And %{I should see "Sign up"}
  And %{I should see "Login"}
end

When /^I go to the sign in page$/ do
  visit('/users/sign_in')
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content(arg1)
end

Then /^I go to the home page$/ do
  visit('/')
end

Given /^I am on the home page$/ do
  visit('/')
end

Given /^I go to the sign up page$/ do
  visit('/users/sign_up')
end

When /^I sign up(.*)$/ do |condition|
  fill_in("Name", { :with => "Testy McUserton" })
  fill_in("Email", { :with => "user@test.com" })
  fill_in("Password", { :with => "please" })
  fill_in("Password confirmation", { :with => "please" })

  case condition
  when " with valid info"
  when " with an invalid email" 
    fill_in("Email", { :with => "invalid" })
  when " without a password"
    fill_in("Password", { :with => "" })
  when " without password confirmation"
    fill_in("Password confirmation", { :with => "" })
  when " with mismatched password and confirmation"
    fill_in("Password confirmation", { :with => "please1" })
  end

  click_button("Sign up")
end


Then /^I should see a welcome message$/ do 
  page.should have_content("Welcome! You have signed up successfully")
end

When /^I go to edit my account$/ do
  visit('/')
  click_link('Edit account')
end

When /^I go to my profile$/ do
  #....
  visit('/users/1')
end

When /^I change my name to "([^"]*)"$/ do |new_name|
  fill_in("Name", { :with => new_name })
  fill_in("Current password", { :with => "please" })
  click_button("Update")
end

When /^I go to the list of users$/ do
  visit('/users')
end

When /^I select "(.*)" for the contribution preference "(.*)"$/ do |pref, name|
  select(pref, {:from => name})
end

Given /^the contribution preference "(.*)"$/ do |name|
  ContributionPreference.create({ :name => name })
end


