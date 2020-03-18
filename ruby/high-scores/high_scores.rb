# frozen_string_literal: true

# Manage score list
class HighScores
  attr_reader :scores
  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.sort.reverse[0, 3]
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
