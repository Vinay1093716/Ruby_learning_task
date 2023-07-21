require_relative "task1"
require "test/unit"
class Test_task1 < Test::Unit::TestCase
  obj1 = Task1.new

  def test_simple 
    assert_equal( 10, obj1.method1(7, 3) )
    assert_equal( 0, obj1.method2(7, 7) )
  end

  def test_typecheck
    assert_raise(Runtime errror){obj1.method1("abcd","efgh")}
  end

  def test_failure
    assert_equal( 3, obj1.method3(5, 5),"wrong result")
  end

end