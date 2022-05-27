defmodule CgpaCalculator do
  @course_list []
  # [course_list]

  def add_course() do
    namer = IO.gets("Enter course name\t")
    scorer = IO.gets("Enter score\t")
    unitr = IO.gets("Enter unit\t")
    %{name: namer, score: scorer, unitr: unitr}
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
      0 < score and score < 40 -> {:ok, 0}
      40 <= score and score < 45 -> {:ok, 1}
      45 <= score and score < 50 -> {:ok, 2}
      50 <= score and score < 60 -> {:ok, 3}
      60 <= score and score < 70 -> {:ok, 4}
      70 <= score and score <= 100 -> {:ok, 5}
      true -> {:error, "Score is not between 1 to 100"}
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
