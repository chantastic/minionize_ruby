class Minionize
  def self.to_s(dict)
		[
	    dict && dict[:mn] && dict[:mn].split(" ").map{ |s| "#{s}@mn" }.join(" ").to_s,
	    dict && dict[:xs] && dict[:xs].split(" ").map{ |s| "#{s}@xs" }.join(" ").to_s,
	    dict && dict[:sm] && dict[:sm].split(" ").map{ |s| "#{s}@sm" }.join(" ").to_s,
	    dict && dict[:md] && dict[:md].split(" ").map{ |s| "#{s}@md" }.join(" ").to_s,
	    dict && dict[:lg] && dict[:lg].split(" ").map{ |s| "#{s}@lg" }.join(" ").to_s,
	    dict && dict[:xl] && dict[:xl].split(" ").map{ |s| "#{s}@xl" }.join(" ").to_s,
	    dict && dict[:mx] && dict[:mx].split(" ").map{ |s| "#{s}@mx" }.join(" ").to_s,
		].join(" ").strip
  end
end
