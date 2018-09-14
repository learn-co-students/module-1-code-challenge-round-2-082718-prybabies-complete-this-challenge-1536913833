class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select {|item| item.movie == self}
  end

  def viewers
    viewer_list = []
    queue_items.select {|item| viewer_list << item.viewer}
    viewer_list
  end

  def average_rating
    ratings = []
    queue_items.each {|item| rating << item.rating }
    rating.inject{ |sum, el| sum + el }.to_f / rating.size
  end

  def self.all
    @@all
  end

end
