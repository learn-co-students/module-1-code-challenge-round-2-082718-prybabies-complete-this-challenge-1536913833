class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select {|item| item.viewer == self}
  end

  def queue_movies
    movies = []
    queue_items.select {|item| movies << item.movie}
    movies
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    if self.queue_movies.include?(movie) == false
      QueueItem.new(movie, self, rating)
    else m = self.queue_items.select { |item| item.movie == movie }
    end
    m.rating = rating
  end

  def self.all
    @@all
  end

end
