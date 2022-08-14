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
        translate([-0.001, 0, 0]) {
          side_tab_half_cyl();
          translate([14.001, 0, 0]) {
            mirror([1, 0, 0]) {
              side_tab_half_cyl();
            }
          }
        }
      }
      translate([5.0, 1.6, -0.999]) {
        cube([4, 2, 1]);
      }
      translate([5.0, 1.6, 13.999]) {
        cube([4, 2, 1]);
      }
    }
  }
}
module side_tab_half_cyl() {
  translate([0, 0.8, 7.0]) {
    rotate([0, 180, 0]) {
      difference() {
        cylinder(h=3, r=0.8, center=true);
        translate([0, -1.5, -1.501]) {
          cube([1.6, 3.002, 6.002]);
        }
      }
    }
  }
}
translate([0.0, 0, 0]) {
  rotate([0, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([0.0, 18, 1.6]) {
  rotate([10, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([0.0, 35, 6.5]) {
  rotate([22, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([0.0, 53, 13]) {
  rotate([34, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.1, 0, 0]) {
  rotate([0, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.1, 18, 1.6]) {
  rotate([10, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.1, 35, 6.5]) {
  rotate([22, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.1, 53, 13]) {
  rotate([34, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.2, 0, 0]) {
  rotate([0, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.2, 18, 1.6]) {
  rotate([10, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.2, 35, 6.5]) {
  rotate([22, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.2, 53, 13]) {
  rotate([34, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.300000000000004, 0, 0]) {
  rotate([0, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.300000000000004, 18, 1.6]) {
  rotate([10, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.300000000000004, 35, 6.5]) {
  rotate([22, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.300000000000004, 53, 13]) {
  rotate([34, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.4, 0, 0]) {
  rotate([0, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.4, 18, 1.6]) {
  rotate([10, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.4, 35, 6.5]) {
  rotate([22, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.4, 53, 13]) {
  rotate([34, 0, 0]) {
    translate([0, 0, -13.6]) {
      difference() {
        translate([0, 0, -2.5]) {
          cube([19.102, 20.401999999999997, 4.998], center=true);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([-9.55, 0, 0]) {
  rotate([90, 0, 270]) {
    mirror([0, 0, 1]) {
      linear_extrude(height=95.5) {
        polygon(points=[[-10.2, -13.6], [-10.2, -18.6], [-11.184817023880383, -18.488635618229758], [-10.31657613554573, -13.564596853168718]]);
      }
    }
  }
}
translate([-9.55, 0, 0]) {
  rotate([90, 0, 270]) {
    mirror([0, 0, 1]) {
      linear_extrude(height=95.5) {
        polygon(points=[[-30.406654296994773, -10.02217402876334], [-31.274895185329427, -14.946212793824381], [-32.510407320954734, -14.56660694778455], [-30.637374353875174, -9.930687674950612]]);
      }
    }
  }
}
translate([-9.55, 0, 0]) {
  rotate([90, 0, 270]) {
    mirror([0, 0, 1]) {
      linear_extrude(height=95.5) {
        polygon(points=[[-49.55192498703764, -2.288713169266007], [-51.4249579541172, -6.924632442099947], [-54.94480476449447, -8.123866464925392], [-52.14884024714073, -3.9786786021501825]]);
      }
    }
  }
}
translate([-9.55, 0, 0]) {
  rotate([90, 0, 270]) {
    linear_extrude(height=5) {
      polygon(points=[[-69.06120672726358, 7.428856628653052], [-52.14884024714073, -3.9786786021501825], [-49.55192498703764, -2.288713169266007], [-30.637374353875174, -9.930687674950612], [-30.406654296994773, -10.02217402876334], [-10.31657613554573, -13.564596853168718], [-10.2, -13.6], [10.2, -13.6], [10.2, -25], [-71.85717124461732, -25], [-71.85717124461732, 3.2836687658778416]]);
    }
  }
}
translate([90.949, 0, 0]) {
  rotate([90, 0, 270]) {
    linear_extrude(height=5) {
      polygon(points=[[-69.06120672726358, 7.428856628653052], [-52.14884024714073, -3.9786786021501825], [-49.55192498703764, -2.288713169266007], [-30.637374353875174, -9.930687674950612], [-30.406654296994773, -10.02217402876334], [-10.31657613554573, -13.564596853168718], [-10.2, -13.6], [10.2, -13.6], [10.2, -25], [-71.85717124461732, -25], [-71.85717124461732, 3.2836687658778416]]);
    }
  }
}
translate([-14.55, -14.2, -25]) {
  cube([105.5, 4, 7.4]);
}
translate([90.95, -10.2, -17.6]) {
  rotate([90, 0, 270]) {
    linear_extrude(height=105.5) {
      difference() {
        circle(r=4, center=true);
        union() {
          translate([-4, 0]) {
            square([4, 4], center=false);
          }
          translate([-4, -4]) {
            square([4, 4], center=false);
          }
          translate([0, -4]) {
            square([4, 4], center=false);
          }
        }
      }
    }
  }
}