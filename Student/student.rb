class Student

  def initialize(name, cohort)
      @name = name
      @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def make_student_talk()
    return "I can talk!"
  end

  def say_favorite_language()
    # p "What's your favorite language?"
    # favorite_language = gets.chomp
    favorite_language = "German"
    return "My favorite language is #{favorite_language} :)"
  end
end
