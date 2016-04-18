class CatsController < ASeriesOfTubes::TubeController
  def create
    @cat = Cat.new
    @cat.name = params['cat']['name']
    @cat.owner = params['cat']['owner']

    if @cat.name.empty? || @cat.name.nil?
      flash.now['error'] = 'Name cannot be blank'
      render :new
    elsif @cat.owner.empty? || @cat.owner.nil?
      flash.now['error'] = 'Owner name cannot be blank'
      render :new
    else
      @cat.save
      @cat.owner.save
      flash['success'] = 'Cat Created!'
      redirect_to '/'
    end
  end

  def index
    @cats = Cat.all
    render :index
  end

  def new
    @cat = Cat.new
    render :new
  end
end
