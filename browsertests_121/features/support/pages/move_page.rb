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
class MovePage
  include PageObject

  div(:body_content, id: "content")
  checkbox(:leave_redirect, id: "wpLeaveRedirect")
  button(:move_page, name: "wpMove")
  select(:namespace, id: "wpNewTitleNs")
  text_field(:new_title, id: "wpNewTitleMain")
  text_field(:reason, id: "wpReason")
  div(:redirect_content, id: "contentSub")
  checkbox(:watch_source, id: "watch")

  def old_page_link_element(text)
    @browser.a(text: text)
  end
  def moved_page_link_element(text)
    @browser.a(text: "#{text} Moved")
  end
end
