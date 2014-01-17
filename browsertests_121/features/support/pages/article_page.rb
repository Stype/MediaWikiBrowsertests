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
class ArticlePage
  include PageObject

  include URL
  page_url URL.url("<%=params[:page_name]%>")

  a(:actions_link) do |page|
    page.actions_element.element.a
  end
  div(:actions, id: "p-cactions")
  a(:discussion, text: "Discussion")
  a(:edit, text: "Edit")
  a(:move_link, text: "Move")
  select(:namespace, id: "wpNewTitleNs")
  div(:page_text, id: "mw-content-text")
  h1(:title, id: "firstHeading")
  li(:unwatch, id: "ca-unwatch")
  li(:watch, id: "ca-watch")
end
