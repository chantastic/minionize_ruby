require 'minitest/autorun'
require 'minionize'

class MinionizeTest < Minitest::Test
	def test_singles
		assert_equal "p-1@mn m-2@mn", Minionize.to_s({ mn: "p-1 m-2" })
		assert_equal "p-1@xs m-2@xs", Minionize.to_s({ xs: "p-1 m-2" })
		assert_equal "p-1@sm m-2@sm", Minionize.to_s({ sm: "p-1 m-2" })
		assert_equal "p-1@md m-2@md", Minionize.to_s({ md: "p-1 m-2" })
		assert_equal "p-1@lg m-2@lg", Minionize.to_s({ lg: "p-1 m-2" })
		assert_equal "p-1@xl m-2@xl", Minionize.to_s({ xl: "p-1 m-2" })
		assert_equal "p-1@mx m-2@mx", Minionize.to_s({ mx: "p-1 m-2" })
	end

	def test_multi
		assert_equal "p-1@mn p-2@xs p-3@sm p-4@md p-5@lg p-6@xl p-7@mx", Minionize.to_s({
			mn: "p-1",
			xs: "p-2",
			sm: "p-3",
			md: "p-4",
			lg: "p-5",
			xl: "p-6",
			mx: "p-7",
		})
		assert_equal "p-1@mn m-1@mn p-2@xs m-2@xs p-3@sm m-3@sm p-4@md m-4@md p-5@lg m-5@lg p-6@xl m-6@xl p-7@mx m-7@mx", Minionize.to_s({
			mn: "p-1 m-1",
			xs: "p-2 m-2",
			sm: "p-3 m-3",
			md: "p-4 m-4",
			lg: "p-5 m-5",
			xl: "p-6 m-6",
			mx: "p-7 m-7",
		})
	end
end
