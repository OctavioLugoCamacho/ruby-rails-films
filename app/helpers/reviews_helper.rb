module ReviewsHelper
  def average_stars(movie)
    if movie.average_stars.zero?
      content_tag(:strong, "No reviews")
    else
      "*" * movie.average_stars.round
    end
  end
end
