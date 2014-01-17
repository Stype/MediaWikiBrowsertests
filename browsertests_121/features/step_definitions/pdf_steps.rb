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
Then(/^Download as PDF should be present$/) do
  on(RandomPage).download_as_pdf_element.should exist
end
When(/^I click on Download as PDF$/) do
  on(RandomPage).download_as_pdf_element.when_present.click
end
Then(/^Download the file link should be present$/) do
  on(RandomPage).download_the_file_element.when_present(30).should exist
end
