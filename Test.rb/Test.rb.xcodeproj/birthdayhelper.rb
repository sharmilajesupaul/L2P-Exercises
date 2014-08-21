require 'yaml'

#yaml methods: save and load
def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end

#change to my Documents directory, to find my text file
Dir.chdir '/Users/sharmila/Documents'

filename = 'birthdays.txt'
read_text = yaml_load(filename)
puts read_text
