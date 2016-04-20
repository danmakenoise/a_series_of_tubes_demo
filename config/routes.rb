TUBES = ASeriesOfTubes::Tubes::Tuber.new

TUBES.draw do
  get  Regexp.new('^/$'),                CatsController, :index
  get  Regexp.new('^/cats$'),            CatsController, :index
  get  Regexp.new('^/cats/new$'),        CatsController, :new
  get  Regexp.new('^/cats/(?<id>\d+)$'), CatsController, :show
  post Regexp.new('^/cats$'),            CatsController, :create
end
