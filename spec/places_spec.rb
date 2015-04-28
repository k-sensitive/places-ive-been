require('rspec')
require('places')

describe('Places') do
  describe('#display') do
    it('returns the place entered') do
      test_spec = Places.new('Portland, Oregon')
      expect(test_spec.display()).to(eq('Portland, Oregon'))
    end
  end

  describe('.all') do
    it('returns an array of places') do
      test_spec = Places.new('New York')
      test_spec.store()
      expect(Places.all()).to(eq([test_spec]))
    end
  end
end
