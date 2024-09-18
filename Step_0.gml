//Calculating steps
pendulumangles.a += pendulumspda * speedMultiplier;
pendulumangles.b += pendulumspdb * speedMultiplier;

pendulumpositions.b = [
	pendulumpositions.a[0] + lengthdir_x(pendulumlength, pendulumangles.a),
	pendulumpositions.a[1] + lengthdir_y(pendulumlength, pendulumangles.a)
];

