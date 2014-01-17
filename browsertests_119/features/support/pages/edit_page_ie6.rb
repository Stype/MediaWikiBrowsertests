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
class EditPageIE6
  include PageObject

  img(:bold, id: "mw-editbutton-bold")
  img(:embedded, id: "mw-editbutton-image")
  img(:italic, id: "mw-editbutton-italic")
  img(:link, id: "mw-editbutton-link")
  img(:sig, id: "mw-editbutton-signature")
end
