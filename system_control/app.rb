require 'sinatra'

#File which will store the volume level number to
# know which is the current one
VOLUME_FILE='/home/game/config/volume.data'

get '/' do
  @vol = getvolume
  erb :volume
end

get '/themes' do
  erb :theme
end

get '/set_itg3' do
  swap_theme "itg3"
  erb :theme
end

get '/set_groovenights' do
  swap_theme "GrooveNights 2014"
  erb :theme
end

get '/set_simplylove' do
  swap_theme "simplylove"
  erb :theme
end

def swap_theme theme_name
  system("/home/game/scripts/util/swap_theme.sh '#{theme_name}'")
end


get '/setvolume' do
  @vol = params['volume']
  begin 
    @vol = @vol.to_i
  rescue Exception
    @vol = 60
  end
  setvolume @vol
  erb :volume
end

get '/panic' do
  system("/home/game/scripts/util/unmute_all.sh")
  erb :panic
end

get '/freeplay' do
  system("/home/game/scripts/util/enable_freeplay.sh")
  erb :freeplay
end

get "/reset" do
  system "killall openitg"
  erb :reset
end

def getvolume
  File.open(VOLUME_FILE, 'a+') do |f| 
    @vol = f.readline
  end
  @vol = 70 if @vol == nil
  
  @vol
end

def setvolume num
  vol = 60
  if num >= 0 || num <= 100
    vol = num
  end
  
  File.open(VOLUME_FILE, 'w+') do |file|
    file.write(num)
  end
  
  puts "Setting volume #{vol}"
  system("amixer set Master #{vol}%")
end
