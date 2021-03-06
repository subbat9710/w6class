require "minitest/autorun"
require_relative "coin_chnger.rb"

class TestCoinChanger < Minitest::Test

    def test_0_cent_returns_empty_hash  
	    assert_equal({}, make_change(0)) #it pass 0 in the empty hash
    end
    def test_1_cent_returns_penny_hash
        assert_equal({:penny => 1}, make_change(1)) #expecting :penny hash for 1 cent.
    end
    def test_2_cents_returns_2_penny_hash
    	assert_equal({:penny => 2}, make_change(2)) #expecting 2 pennies in this test.
    end
    def test_5_cents_returns_1_nickel_hash
    	assert_equal({:nickel => 1}, make_change(5)) #expecting nickel for 5 cents.
    end
    def test_6_cents_returns_1_nickel_1_penny_hash
    	assert_equal({:nickel => 1, :penny => 1}, make_change(6)) #expecting 1 nickel and 1 penny for 6 cents.
    end
    def test_7_cents_returns_1_nickel_2_pennies_hash
    	assert_equal({:nickel => 1, :penny => 2}, make_change(7)) #expecting nickel for 5 cents.
    end
    def test_9_cents_returns_1_nickel_4_pennies_hash
    	assert_equal({:nickel => 1, :penny => 4}, make_change(9)) #expecting nickel for 5 cents.
    end
    def test_10_cents_returns_1_dime_hash
    	assert_equal({:dime => 1}, make_change(10)) #expecting dime for 10 cents.
    end
    def test_19_cents_returns_1_dime_1_nickel_4_pennies_hash
    	assert_equal({:dime => 1, :nickel => 1, :penny => 4}, make_change(19)) #expecting 1dime,1nickel & 4pennies for 19 cents.
    end
    def test_20_cents_returns_2_dimes_hash
    	assert_equal({:dime => 2}, make_change(20)) #expecting 2 dimes for 20 cents.
    end
    def test_21_cents_returns_1_dimes_1_penny_hash
    	assert_equal({:dime => 2, :penny => 1}, make_change(21)) #expecting 2 dimes & 1 penny for 21 cents.
    end
    def test_25_cents_returns_1_quarter_hash
    	assert_equal({:quarter => 1}, make_change(25)) #expecting quarter for 25 cents.
    end
    def test_31_cents_returns_1_quarter_1_penny_hash
    	assert_equal({:quarter => 1, :nickel => 1, :penny => 1}, make_change(31)) #expecting 1 quarter, 1 nickel & 1 penny for 31 cents.
    end
    def test_50_cents_returns_2_quarter_hash
    	assert_equal({:quarter => 2}, make_change(50)) #expecting 2 quarter for 50 cents.
    end
    def test_55_cents_returns_2_quarter_1_nickel_hash
    	assert_equal({:quarter => 2, :nickel => 1}, make_change(55)) #expecting 2 quarter & 1 nickel for 55 cents.
    end
    def test_66_cents_returns_2_quarter_1_dime_1_nickel_1_penny_hash
    	assert_equal({:quarter => 2, :dime => 1, :nickel => 1, :penny => 1}, make_change(66)) #expecting 2 quarter, 1 dime, 1 nickel & 1 penny for 66 cents.
    end
    def test_86_cents_returns_3_quarter_1_dime_1_penny_hash
    	assert_equal({:quarter => 3, :dime => 1, :penny => 1}, make_change(86)) #expecting nickel for 5 cents.
    end
    def test_90_cents_returns_3_quarter_1_dime_1_nickel_hash
    	assert_equal({:quarter => 3, :dime => 1, :nickel => 1}, make_change(90)) #expecting 3quarter, 1dime & 1nickel for 90 cents.
    end
    def test_91_cents_returns_3_quarter_1_dime_1_nickel_1_pennies_hash
    	assert_equal({:quarter => 3, :dime => 1, :nickel => 1, :penny => 1}, make_change(91)) #expecting 3 quarter, 1 dime, 1 nickel & 1 penny for 91 cents.
    end
    def test_93_cents_returns_3_quarter_1_dime_1_nickel_3_pennies_hash
    	assert_equal({:quarter => 3, :dime => 1, :nickel => 1, :penny => 3}, make_change(93)) #expecting 3 quarter, 1 dime, 1 nickel & 3 pennies for 93 cents.
    end
    def test_17_cents_returns_1_dime_1_nickel_2_pennies_hash
    	assert_equal({:dime => 1, :nickel => 1, :penny => 2}, make_change(17)) #expecting 1 dime, 1 nickel & 2 pennies for 17 cents.
    end
    def test_200_cents_returns_4_quarters_hash
    	assert_equal({:quarter => 8}, make_change(200))
    end
end