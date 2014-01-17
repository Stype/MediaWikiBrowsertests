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
class DescribePage
  include PageObject

  include URL
  def self.url
    URL.url("Special:UploadWizard")
  end
  page_url url

  text_field(:category, id: "categories0")
  textarea(:description, name: /^description/)
  div(:next_parent, id: "mwe-upwiz-stepdiv-details")
  span(:next) do |page|
    page.next_parent_element.span_element(text: "Next")
  end
  text_field(:title, id: "title0")
end
