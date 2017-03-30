/*
 * Backgammon Doubling Cube
 */

 module doubling_cube(size = 50, glyph_cut = 5, glyph_fraction=3/5) {
     difference() {
         cube([size, size, size]);
         union() {
            translate([size/2, size/2, size - glyph_cut]) linear_extrude(2*glyph_cut) text("2", glyph_fraction*size, halign="center", valign="center");
            translate([size/2, glyph_cut, size/2]) rotate([90, 0, 0]) linear_extrude(2*glyph_cut) text("4", glyph_fraction*size, halign="center", valign="center");         
            translate([-glyph_cut, size/2, size/2]) rotate([90, 0, 90]) linear_extrude(2*glyph_cut) text("8", glyph_fraction*size, halign="center", valign="center");         
            translate([size/2, size - glyph_cut, size/2]) rotate([90, 0, 180]) linear_extrude(2*glyph_cut) text("16", glyph_fraction*size, halign="center", valign="center");         
            translate([size - glyph_cut, size/2, size/2]) rotate([90, 0, 90]) linear_extrude(2*glyph_cut) text("32", glyph_fraction*size, halign="center", valign="center");         
            translate([size/2, size/2, glyph_cut]) rotate([180, 0, 90]) linear_extrude(2*glyph_cut) text("64", glyph_fraction*size, halign="center", valign="center");         
         }
     }
}

doubling_cube(size = 50);