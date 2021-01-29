require 'csv'
def own_source_code
  CSV.foreach(__FILE__) do |file|
    file.each do |x|
      puts x
    end
  end
end

own_source_code