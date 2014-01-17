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
When(/^I click the Add a new category link$/) do
  on(HotcatPage).add_new_category_element.when_present.click
end

When(/^I click the Categories link$/) do
  on(HotcatPage).categories_link_element.when_present.click
end

When(/^I click the Modify several categories button$/) do
  on(HotcatPage).modify_several_categories_element.when_present.click
end

Then(/^a Save button is visible$/) do
  on(HotcatPage).save_button_element.when_present.should be_visible
end

Then(/^an Add new categories link is visible$/) do
  on(HotcatPage).add_new_category_element.when_present.should be_visible
end

Then(/^I am taken to the Special:Categories page$/) do
  @browser.url.should match Regexp.escape("Special:Categories")
end

Then(/^I can click Cancel and click Add new category$/) do
  on(HotcatPage).cancel_element.when_present.click
  step "I click the Add a new category link"
end

Then(/^I can click OK and click Add new category$/) do
  on(HotcatPage).ok_element.when_present.click
  step "I click the Add a new category link"
end
