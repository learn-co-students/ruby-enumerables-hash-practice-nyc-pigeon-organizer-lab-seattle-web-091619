def nyc_pigeon_organizer(data)
  traits_by_name = {}

  data.each do |name_of_attribute, attributes|
    attributes.each do |value_of_attribute, name_of_pidgeon|
      name_of_pidgeon.each do |name|
        traits_by_name[name] ||= {}
        traits_by_name[name][name_of_attribute] ||= []
        traits_by_name[name][name_of_attribute].push(value_of_attribute.to_s)
      end
    end
  end

  traits_by_name
end
