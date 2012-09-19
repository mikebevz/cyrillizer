When /^user writes latin (.*) character$/ do |latin|
  @text = latin
end

Then /^that latin character will be converted into (.*)?$/ do |cyrilic|
  @text.to_cyr.should == cyrilic
end

When /^user writes cyrillic (.*) character$/ do |cyr|
  @text = cyr
end

Then /^that cyrillic character will be converted into (.*)?$/ do |latin|
  @text.to_lat.should == latin
end



When /^user writes (.*) text$/ do |latin|
  @text = latin
end

Then /^that text will be converted into (.*)?$/ do |cyrilic|
  @text.to_cyr.should == cyrilic
end