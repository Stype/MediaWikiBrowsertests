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
class SearchPage
  include PageObject

  div(:one_result, class: "suggestions-result")
  #button(:search_button, id: "searchButton")
  button(:search_button, type: "submit", value: "Search")
  text_field(:search_input, id: "searchInput")
  div(:search_results, class: "suggestions-results")
end
