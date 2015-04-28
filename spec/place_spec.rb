require('rspec')
require('place')
require('pry')

describe('Place') do
  before() do
    Place.clear()
  end

  describe('#display') do
    it('returns the place entered') do
      test_spec = Place.new('Portland, Oregon')
      expect(test_spec.display()).to(eq('Portland, Oregon'))
    end
  end

  describe('#save') do
    it('adds a place to the array of places list') do
      test_spec = Place.new('Portland, Oregon')
      test_spec.save()
      expect(Place.all().first().display()).to(eq('Portland, Oregon'))
    end
  end

  describe('.all') do
    it('returns an array of places') do
      test_spec = Place.new('New York')
      test_spec.save()
      expect(Place.all()).to(eq([test_spec]))
    end
  end

  describe('.clear') do
    it('clears out all the saved places') do
      Place.new('Portland, Oregon').save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

end
