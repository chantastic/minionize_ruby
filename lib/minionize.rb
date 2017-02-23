class Minionize
	def self.to_s(hash)
		defaults = hash.delete(:default) || ""

		suffixed = hash.map do |suffix, selectors|
			selectors.split(" ")
							 .map{|selector| "#{selector}@#{suffix}"}
							 .join(" ")
		end.join(" ") || ""

		[defaults, suffixed].join(" ").strip
	end
end
