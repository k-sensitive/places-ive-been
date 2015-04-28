class Places

  @@places = []

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:display) do
    @place
  end

  define_method(:store) do
    @@places.push(self)  
  end

  define_singleton_method(:all) do
    @@places
  end
end
