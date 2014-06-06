require './lib/meekster/round'
require 'bigdecimal'

describe Meekster::Round do

  describe ".round_up_to_nine_decimal_places" do
    it "rounds to the same value when tenth and later decimal places are zero" do
      expect(Meekster::Round.round_up_to_nine_decimal_places(BigDecimal('1.1234567890'))).to eq(BigDecimal('1.123456789'))
    end

    it "rounds up when tenth decimal place is present" do
      expect(Meekster::Round.round_up_to_nine_decimal_places(BigDecimal('1.2222222221'))).to eq(BigDecimal('1.2222222230'))
    end
  end

  describe ".truncate_to_nine_decimal_places" do
    it "removes tenth decimal and more" do
      expect(Meekster::Round.truncate_to_nine_decimal_places(BigDecimal('1.3333333337777'))).to eq(BigDecimal('1.333333333'))
    end
  end

end
