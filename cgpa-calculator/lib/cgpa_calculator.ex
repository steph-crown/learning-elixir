defmodule CgpaCalculator do
  @course_list []
  # [course_list]

  def add_course(name, score, unit) do
    ori = @course_list
    IO.inspect(ori)
    @course_list = ori ++ [{"name", "score", "unit"}]
  end

  def get_course() do
    @course_list
  end

  # def remove_course(key, value) do
  # end

  def get_course_list() do
    @course_list
  end

  # Gets the grade of a score
  def get_score_grade(score) do
    cond do
      0 < score and score < 40 -> 0
      40 <= score and score < 45 -> 1
      45 <= score and score < 50 -> 2
      50 <= score and score < 60 -> 3
      60 <= score and score < 70 -> 4
      70 <= score and score <= 100 -> 5
      true -> -1
    end
  end

  def get_grade_point({score, unit}) do
    cond do
      get_score_grade(score) === -1 or unit < 1 ->
        -1

      get_score_grade(score) >= 0 ->
        get_score_grade(score) * unit

      true ->
        -1
    end
  end

  # def get_total_score() do
  # end

  # def get_total_grade_point() do
  # end

  # def get_total_units() do
  # end

  # def get_cgpa() do
  # end
end
