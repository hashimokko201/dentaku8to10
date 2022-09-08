require 'sinatra'

set :environment, :production

get '/' do
  erb :index
end

post '/push' do
str = params[:num].split("")
int = []
for n in str
  int.push(n.to_i)
end
#puts int

nod = int.length

int2 = []

int.each do |i|
  int2.push(i*(8**(nod-1)))
  nod = nod-1
end

"#{params[:num]} = #{int2.join('+')}
<br>
<br>
= #{int2.sum}
<br>
<br>
<a href='/'>Back</a>"

end
