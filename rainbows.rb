require 'rainbow'

red = [255,0,0]
green = [0,255,0]
blue = [0,0,255]

color_lookup = {
  [255,0,0] => "red",
  [255,125,0] => "orange",
  [255,255,0] => "yellow",
  [125,255,0] => "spring green",
  [0,255,0] => "green",
  [0,255,125] => "turquoise",
  [0,255,255] => "cyan",
  [0,125,255] => "ocean",
  [0,0,255] => "blue",
  [125,0,255] => "violet",
  [255,0,255] => "magenta",
  [255,0,125] => "raspberry"
}

def mix_colors(color1,color2)
  mixed_color = []
  3.times do |i|
    mixed_color[i] = color1[i] + color2[i]
  end
  return mixed_color
end

new_color = mix_colors(red,green)
puts "#{color_lookup[red]} #{red} + #{color_lookup[green]} #{green} = #{color_lookup[new_color]} #{new_color}"


rainbow = [
  { red: { r: 255, g: 0, b: 0 } },
  { orange: { r: 255, g: 127, b: 0 } },
  { yellow: { r: 255, g: 255, b: 0 } },
  { green: { r: 0, g: 255, b: 0 } },
  { blue: { r: 0, g: 0, b: 255 } },
  { violet: { r: 75, g: 0, b: 130 } },
  { purple: { r: 143, g: 0, b: 255 } }
]

rainbow.each do |color|
  color_name = color.keys.join
  color_rgb = color.values.pop
  puts Rainbow(color_name).color(color_rgb[:r], color_rgb[:g], color_rgb[:b])
end
