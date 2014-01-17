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
class TourPage
  include PageObject

  a(:edit, text: "Edit source")
  div(:guider1, id: "gt-gettingstarted-1")
  div(:guider2, id: "gt-gettingstarted-2")
  div(:guider3, id: "gt-gettingstarted-3")
  div(:guider4, id: "gt-gettingstarted-4")
  div(:guider5, id: "gt-gettingstarted-5")
  a(:next, text: "Next")
  button(:preview, id: "wpPreview")
  button(:submit_changes, id: "wpSave")
  text_field(:text, id: "wpTextbox1")
end
