class CatsController < ASeriesOfTubes::TubeController
  def create
    cat = Cat.new params['cat']
    save_cat cat
    flash['success'] = 'Cat Created!'
    redirect_to '/cats'
  end

  def index
    @cats = get_cats_from_cookies
  end

  def new
    @cat = Cat.new
  end

  private

  def get_cats_from_cookies
    session['cats'] ? session['cats'] : []
  end

  def save_cat cat
    session['cats'] ||= []
    session['cats'] << { owner: cat.owner, name: cat.name }
  end
end
