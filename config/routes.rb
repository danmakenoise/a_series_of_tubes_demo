TUBES = ASeriesOfTubes::Tubes::Tuber.new

TUBES.draw do
  get  Regexp.new('^/$'),         CatsController, :index
  get  Regexp.new('^/cats$'),     CatsController, :index
  get  Regexp.new('^/cats/new$'), CatsController, :new
  post Regexp.new('^/cats$'),     CatsController, :create
end
