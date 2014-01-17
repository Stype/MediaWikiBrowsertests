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
When(/^I choose a (.+) reference$/) do | reference_type |
  on(ProveItPage).cite_menu=reference_type
end

When(/^I click Edit button on the page$/) do
  on(RandomPage).edit_page
end

When(/^I click Insert into edit form$/) do
  on(ProveItPage).insert_reference
end

When(/^I click on the edit button for the new reference$/) do
  on(ProveItPage).edit_reference
end

When(/^I click on the update edit form button$/) do
  on(ProveItPage).update_edit_form
end

When(/^I click ProveIt show button$/) do
  on(ProveItPage).show_hide
end

When(/^I click add a reference link$/) do
  on(ProveItPage).add_reference
end

When(/^I enter new reference data$/) do
  on(ProveItPage) do |page|
    page.new_title="ProveIt Automated Test Reference"
    page.new_url="www.canyouproveit.com"
  end
end

When(/^I enter updated reference data$/) do
  on(ProveItPage) do |page|
    page.edit_title="ProveIt Automated Test Reference - updated"
    page.edit_url="www.canyouproveit.com - updated"
  end
end

Then(/^I see the new reference in the list$/) do
  on(ProveItPage).refs_table.should include "ProveIt Automated Test Reference"
end

Then(/^I see the updated reference in the list$/) do
  on(ProveItPage).refs_table.should include "ProveIt Automated Test Reference - updated"
end

Then(/^I see the new reference in the page editor$/) do
  on(RandomPage).editor_text.should include "ProveIt Automated Test Reference"
end

Then(/^I see the updated reference in the page editor$/) do
  on(RandomPage).editor_text.should include "ProveIt Automated Test Reference - updated"
end
