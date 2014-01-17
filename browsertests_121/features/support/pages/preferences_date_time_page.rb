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
class PreferencesDateTimePage
  include PageObject

  include URL
  page_url URL.url("Special:Preferences#mw-prefsection-rendering")

  radio_button(:day_mo_year_radio, id: "mw-input-wpdate-dmy")
  radio_button(:iso_8601_radio, id: "mw-input-wpdate-ISO_8601")
  span(:local_time_span, id: "wpLocalTime")
  radio_button(:mo_day_year_radio, id: "mw-input-wpdate-mdy")
  radio_button(:no_preference_radio, id: "mw-input-wpdate-default")
  text_field(:other_offset, id: "mw-input-wptimecorrection-other")
  select_list(:time_offset_select, id: "mw-input-wptimecorrection")
  radio_button(:year_mo_day_radio, id: "mw-input-wpdate-ymd")
end
