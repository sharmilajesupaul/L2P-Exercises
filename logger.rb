$counter = 0

def log block_discription, &block

  if $counter > 0
    print "\t" * $counter
  end

  puts "Beginning \"#{block_discription}\"..."

  $counter += 1

  value = block.call 3

  $counter -= 1

  if $counter > 0
    print "\t" * $counter
  end

  puts "\"#{block_discription}\" finished, returning #{value}"
  puts

  # puts $counter
end

log 'meow' do |lurp|

  log 'inside' do |n|

    log 'waaay inside' do |l|
      l+l
    end

    n*n*n
  end

  puts 'merr ' * lurp
  lurp = lurp + 2
  lurp
end

log 'herp' do |lurp|
  puts 'herp' * lurp
  lurp = lurp * lurp
  lurp
end