class Cat < ASeriesOfTubes::TubeRecord::SQLObject
  self.finalize!

  def owner
    @owner ||= Human.find self.owner_id

    return @owner.name if @owner

    nil
  end

  def owner= owner_name
    @owner = Human.new name: owner_name
  end
end
