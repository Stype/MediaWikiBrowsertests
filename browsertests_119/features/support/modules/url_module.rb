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
module URL
  def self.url(name)
    if ENV["MEDIAWIKI_URL"]
      mediawiki_url = ENV["MEDIAWIKI_URL"]
    else
      mediawiki_url = "http://en.wikipedia.beta.wmflabs.org/wiki/"
    end
    "#{mediawiki_url}#{name}"
  end
end
