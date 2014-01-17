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
@en.wikipedia.beta.wmflabs.org @test2.wikipedia.org
Feature: Edit

  Background:
    Given I am logged in
      And I am at an AFTv5 page
    When I click edit

  Scenario: Go to edit page
    Then edit page should open
      And text box with page text should be there
      And Save button should be there
      And Preview button should be there
      And Show Changes button should be there
      And Edit controls should be there

  Scenario: Read link
    When I click the Read Link
    Then Edit link should be there
      And Preview button should not be there
      And Show Changes button should not be there
      And Save button should not be there
      And Edit controls should not be there
