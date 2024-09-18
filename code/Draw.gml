//Surface initialization
if (!surface_exists(historySurface)) historySurface = surface_create(room_width, room_height);
surface_set_target(historySurface);

//Draw points of pendulum b
var endposPendulumb = [
	pendulumpositions.b[0] + lengthdir_x(pendulumlength, pendulumangles.b),
	pendulumpositions.b[1] + lengthdir_y(pendulumlength, pendulumangles.b)
];
draw_point_color(endposPendulumb[0], endposPendulumb[1], pixelcolor);

surface_reset_target();

//Draw pendulums
draw_line_width_color(pendulumpositions.a[0], pendulumpositions.a[1], pendulumpositions.b[0], pendulumpositions.b[1], pendulumwidth, pendulumcolor, pendulumcolor)
draw_line_width_color(pendulumpositions.b[0], pendulumpositions.b[1], endposPendulumb[0], endposPendulumb[1], pendulumwidth, pendulumcolor, pendulumcolor)

//Draw surface
draw_surface(historySurface, 0, 0);
