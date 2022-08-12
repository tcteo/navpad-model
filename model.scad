$fn=72;
module switch_hole_xyplane_centered() {
  rotate([-90, 0, 0]) {
    switch_hole_upright();
  }
}
module switch_hole_upright() {
  translate([-7.0, 0, -7.0]) {
    union() {
      difference() {
        cube([14, 5, 14]);
        translate([-0.01, 0, 0]) {
          side_tab_half_cyl();
          translate([14.01, 0, 0]) {
            mirror([1, 0, 0]) {
              side_tab_half_cyl();
            }
          }
        }
      }
      translate([5.0, 1.6, -0.99]) {
        cube([4, 2, 1]);
      }
      translate([5.0, 1.6, 13.99]) {
        cube([4, 2, 1]);
      }
    }
  }
}
module side_tab_half_cyl() {
  translate([0, 1, 7.0]) {
    rotate([0, 180, 0]) {
      difference() {
        cylinder(h=4, r=true, center=true);
        translate([0, -2.0, -2.01]) {
          cube([2, 4.02, 8.02]);
        }
      }
    }
  }
}
translate([0.0, 0, 0]) {
  rotate([0, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([0.0, 18, 1.6]) {
  rotate([10, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([0.0, 35, 6.5]) {
  rotate([22, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.080000000000002, 0, 0]) {
  rotate([0, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.080000000000002, 18, 1.6]) {
  rotate([10, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.080000000000002, 35, 6.5]) {
  rotate([22, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.160000000000004, 0, 0]) {
  rotate([0, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.160000000000004, 18, 1.6]) {
  rotate([10, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.160000000000004, 35, 6.5]) {
  rotate([22, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.24000000000001, 0, 0]) {
  rotate([0, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.24000000000001, 18, 1.6]) {
  rotate([10, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.24000000000001, 35, 6.5]) {
  rotate([22, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.32000000000001, 0, 0]) {
  rotate([0, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.32000000000001, 18, 1.6]) {
  rotate([10, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.32000000000001, 35, 6.5]) {
  rotate([22, 0, 0]) {
    color("blue") {
      cube([12.5, 12.5, 0.05], center=true);
    }
    color("green") {
      translate([0, 0, -8]) {
        cube([18.2, 18.2, 0.05], center=true);
      }
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.1, 20.4, 4.98], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
color("red") {
  translate([-9.55, 0, 0]) {
    rotate([90, 0, 270]) {
      linear_extrude(height=0.1) {
        polygon(points=[[10.2, -18.6], [-10.2, -18.6], [-11.184817023880383, -18.488635618229758], [-31.274895185329427, -14.946212793824381], [-32.510407320954734, -14.56660694778455], [-51.4249579541172, -6.924632442099947], [-49.55192498703764, -2.288713169266007], [-30.637374353875174, -9.930687674950612], [-30.406654296994773, -10.02217402876334], [-10.31657613554573, -13.564596853168718], [-10.2, -13.6], [10.2, -13.6]]);
      }
    }
  }
}