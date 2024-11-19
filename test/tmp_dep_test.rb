require "test_helper"

class TmpDepTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TmpDep::VERSION
  end
end
