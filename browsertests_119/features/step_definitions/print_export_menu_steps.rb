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
Then(/^Print\/export section should be collapsed$/) do
  on(RandomPage) do |page|
    sleep 1
    page.create_a_book_element.should_not be_visible
    page.download_as_pdf_element.should_not be_visible
    page.printable_version_element.should_not be_visible
  end
end

Then(/^Print\/export section should be expanded$/) do
  on(RandomPage) do |page|
    sleep 1
    page.create_a_book_element.should be_visible
    page.download_as_pdf_element.should be_visible
    page.printable_version_element.should be_visible
  end
end

When(/^I click Print\/export$/) do
  on(RandomPage).print_export
end

When(/^I click Print\/export again$/) do
  step "I click Print/export"
end
