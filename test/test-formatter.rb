require "aligntext/formatter"

class FormatterTest < Test::Unit::TestCase
  def setup
    @formatter = Aligntext::Formatter.new
  end

  def test_align
    source = <<-SOURCE
foo: value
barbar: value
bazzz: value
    SOURCE
    expected = <<-EXPECTED
foo:    value
barbar: value
bazzz:  value
    EXPECTED
    assert_equal(expected, @formatter.align(source))
  end
end
