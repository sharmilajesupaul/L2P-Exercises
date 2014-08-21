Dir.chdir '/Users/sharmila/Documents/Playlist'

tracks = Dir['/Users/sharmila/Music/iTunes/iTunes Media/Music/**/*.m4a']
#puts tracks
filename = 'playlist1.txt'

tracks.shuffle!

File.open filename, 'w' do |f|
	
	tracks.each do |t| 
		f.write t + "\n"
	end

end


