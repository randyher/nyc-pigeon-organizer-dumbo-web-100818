
def nyc_pigeon_organizer(data)
  output={}

  data[:color].each do |color,pigeon_names|
    pigeon_names.each do |name|
      output[name]={
        :color => [],
        :gender => [],
        :lives => []
      }
    end
  end


  data[:color].each do |color, pigeon_name|
    pigeon_name.each do |elem|
      output.each do |keys,info|
        if keys==elem
          output[keys][:color].push(color.to_s)
        end
      end
    end
  end

  data[:gender].each do |gender, pigeon_name|
    pigeon_name.each do |elem|
      output.each do |keys, info|
        if keys==elem
          output[keys][:gender].push(gender.to_s)
        end
      end
    end
  end

  data[:lives].each do |location, pigeon_name|
    pigeon_name.each do |elem|
      output.each do |keys,info|
        if keys==elem
          output[keys][:lives].push(location.to_s)
        end
      end
    end
  end

  output
end