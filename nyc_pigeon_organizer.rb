require 'pry'

def nyc_pigeon_organizer(data)
  final_hash = {}
  data.each do | key, value |
    value.each do | new_key, array |
      array.each do | name |
        if final_hash[name] == nil
          final_hash[name] = {}

end
if final_hash[name][key] == nil
  final_hash[name][key] = []
end
 final_hash[name][key].push(new_key.to_s)
end
end
end
final_hash
end
