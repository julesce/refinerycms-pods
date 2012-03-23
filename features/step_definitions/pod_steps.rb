Given /^I have no pods$/ do
  Pod.delete_all
end

Given /^I (only )?have pods titled "?([^\"]*)"?$/ do |only, titles|
  Pod.delete_all if only
  titles.split(', ').each do |title|
    Pod.create(:name => title)
  end
end

Then /^I should have ([0-9]+) pods?$/ do |count|
  Pod.count.should == count.to_i
end
