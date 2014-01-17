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
When(/^I click Date and time$/) do
  on(PreferencesPage).date_and_time_link
end
Then(/^I can select date format$/) do
  on(PreferencesDateTimePage) do |page|
    page.no_preference_radio_element.should exist
    page.mo_day_year_radio_element.should exist
    page.day_mo_year_radio_element.should exist
    page.year_mo_day_radio_element.should exist
    page.iso_8601_radio_element.should exist
  end
end
Then(/^I can see server time$/) do
  @browser.text.should match Regexp.escape("Server time")
end
Then(/^I can see local time$/) do
  @browser.text.should match Regexp.escape("Local time")
  on(PreferencesDateTimePage).local_time_span_element.should exist
end
Then(/^I can select my time zone$/) do
  @browser.text.should match Regexp.escape("Time zone")
  on(PreferencesDateTimePage) do |page|
    page.time_offset_select_element.should exist
    page.other_offset_element.should exist
  end
end
