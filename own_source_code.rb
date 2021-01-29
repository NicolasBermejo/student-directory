def own_source_code
  file = File.open(__FILE__, "r") do |file|
    file.each do |x|
      puts x
    end
  end
end

own_source_code