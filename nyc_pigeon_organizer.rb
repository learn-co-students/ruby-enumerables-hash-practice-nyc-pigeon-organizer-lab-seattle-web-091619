def nyc_pigeon_organizer(data)
  new_hash = Hash.new
  color_hash = data[:color]
  color_hash.each do |key, value|
    value.each do |name|
      if new_hash.key?(name) == false
      new_hash[name] = {:color => [], :gender => [], :lives => []}
      end
    new_hash[name][:color].push("#{key}")
    end
  end
  gender_hash = data[:gender]
  gender_hash.each do |key, value|
    value.each do |name|
      if new_hash.key?(name) == false
        new_hash[name] = {:color => [], :gender => [], :lives => []}
      end
      new_hash[name][:gender].push("#{key}")
    end
  end
  lives_hash = data[:lives]
  lives_hash.each do |key, value|
    value.each do |name|
      if new_hash.key?(name) == false
        new_hash[name] = {:color => [], :gender => [], :lives => []}
      end
      new_hash[name][:lives].push("#{key}")
    end
  end
  new_hash
end
