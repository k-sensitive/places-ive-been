class Place

  @@places = []

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:display) do
    @place
  end

  define_method(:save) do
    @@places.push(self)
  end

  define_singleton_method(:all) do
    @@places
  end

  define_singleton_method(:clear) do
    @@places = []
  end

end
