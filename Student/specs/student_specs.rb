require('minitest/autorun')
require('minitest/rg')
require_relative(('../student.rb'))

class TestStudent < MiniTest::Test

  def setup
      @student = Student.new("Fabrizio", "G15")
  end

  def test_student_name
    assert_equal("Fabrizio", @student.name())
  end

  def test_student_cohort
    assert_equal("G15", @student.cohort())
  end

  def test_set_student_name
    @student.set_name("Ingvar")
    assert_equal("Ingvar", @student.name())
  end

  def test_set_student_cohort
    @student.set_cohort("G16")
    assert_equal("G16", @student.cohort())
  end

  def test_make_student_talk
    @student.make_student_talk()
    assert_equal("I can talk!", @student.make_student_talk())
  end

  def test_say_favorite_language
    @student.say_favorite_language()
    assert_equal("My favorite language is German :)", @student.say_favorite_language())
  end
end
