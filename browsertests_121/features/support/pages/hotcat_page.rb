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
class HotcatPage
  include PageObject

  a(:add_new_category, title: "Add a new category")
  button(:cancel, value: "Cancel")
  a(:categories_link, href: "/wiki/Special:Categories")
  a(:modify_several_categories, title: "Modify several categories")
  button(:ok, value: "OK")
  button(:save_button, value: "Save")
end
