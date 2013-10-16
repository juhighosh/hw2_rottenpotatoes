module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  
  def ratingsInclude(ratingName) #checks clicked box
    @checked_ratings.include?(ratingName) ? true : false
  end
  
  def createParameterArray(sortColumn) #creates array to allow for sorting
    @parameterArray = Hash.new
    @parameterArray.merge!({:ratings => @checked_ratings_hash})
    @parameterArray.merge!({:sort_by => sortColumn})
    @parameterArray
  end
end
