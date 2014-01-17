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
class MainPage
  include PageObject

  include URL
  page_url URL.url("Main_Page")

  a(:login, text: "Log in")
  a(:logout, text: "Log out")
  a(:languages, text: "Languages")
  a(:my_sandbox, text: "My sandbox")
  a(:preferences, text: "Preferences")
  a(:simple_english, title: "Simple English")
  a(:talk, text: "Talk")
end
