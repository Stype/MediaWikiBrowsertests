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
class PreferencesEditingPage
  include PageObject

  include URL
  page_url URL.url("Special:Preferences#mw-prefsection-rendering")

  select_list(:edit_area_font_style_select, id: "mw-input-wpeditfont")
  checkbox(:edit_section_check, id: "mw-input-wpeditsection")
  checkbox(:edit_section_double_click_check, id: "mw-input-wpeditondblclick")
  checkbox(:edit_section_right_click_check, id: "mw-input-wpeditsectiononrightclick")
  checkbox(:enhanced_editing_toolbar_check, id: "mw-input-wpusebetatoolbar")
  checkbox(:forced_edit_summary_check, id: "mw-input-wpforceeditsummary")
  checkbox(:live_preview_check, id: "mw-input-wpuselivepreview")
  checkbox(:preview_on_first_check, id: "mw-input-wppreviewonfirst")
  checkbox(:preview_on_top_check, id: "mw-input-wppreviewontop")
  checkbox(:show_edit_toolbar_check, id: "mw-input-wpshowtoolbar")
  checkbox(:unsaved_changes_check, id: "mw-input-wpuseeditwarning")
  checkbox(:wizard_check, id: "mw-input-wpusebetatoolbar-cgd")
end
