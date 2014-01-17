#
# This file is subject to the license terms in the LICENSE file found in the
# qa-browsertests top-level directory and at
# https://git.wikimedia.org/blob/qa%2Fbrowsertests/HEAD/LICENSE. No part of
# qa-browsertests, including this file, may be copied, modified, propagated, or
# distributed except according to the terms contained in the LICENSE file.
#
# Copyright 2012-2013 by the Mediawiki developers. See the CREDITS file in the
# qa-browsertests top-level directory and at
# https://git.wikimedia.org/blob/qa%2Fbrowsertests/HEAD/CREDITS
#
Given(/^I am at main page$/) do
  visit MainPage
end
Then(/^Interaction section should be expanded$/) do
  on(RandomPage).community_portal_element.when_present.should be_visible
end
When(/^I click the interaction section$/) do
  on(RandomPage).interaction_section_element.click
end
Then(/^Interaction section should be collapsed$/) do
  on(RandomPage) do |page|
    page.community_portal_element.element.wait_while_present
    page.community_portal_element.should_not be_visible
  end
end
Then(/^Print export section should be collapsed$/) do
  on(RandomPage).download_as_pdf_element.should_not be_visible
end
When(/^I click print export section$/) do
  on(RandomPage).print_export_element.click
end
Then(/^Print export section should be expanded$/) do
  on(RandomPage).download_as_pdf_element.when_present.should be_visible
end
Then(/^Tools section should be collapsed$/) do
  on(RandomPage).upload_file_element.should_not be_visible
end
When(/^I click tools section$/) do
  on(RandomPage).tools_element.click
end
Then(/^Tools section should be expanded$/) do
  on(RandomPage).upload_file_element.when_present.should be_visible
end
Then(/^Languages section should be expanded$/) do
  on(MainPage).simple_english_element.should be_visible
end
When(/^I click languages section$/) do
  on(MainPage).languages_element.click
end
Then(/^Languages section should be collapsed$/) do
  on(MainPage) do |page|
    page.simple_english_element.element.wait_while_present
    page.simple_english_element.should_not be_visible
  end
end
