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
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([0.0, 17.5, 1.5]) {
  rotate([10, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([0.0, 34, 6]) {
  rotate([22, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.080000000000002, 0, 0]) {
  rotate([0, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.080000000000002, 17.5, 1.5]) {
  rotate([10, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([19.080000000000002, 34, 6]) {
  rotate([22, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.160000000000004, 0, 0]) {
  rotate([0, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.160000000000004, 17.5, 1.5]) {
  rotate([10, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([38.160000000000004, 34, 6]) {
  rotate([22, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.24000000000001, 0, 0]) {
  rotate([0, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.24000000000001, 17.5, 1.5]) {
  rotate([10, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([57.24000000000001, 34, 6]) {
  rotate([22, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.32000000000001, 0, 0]) {
  rotate([0, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.32000000000001, 17.5, 1.5]) {
  rotate([10, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}
translate([76.32000000000001, 34, 6]) {
  rotate([22, 0, 0]) {
    cube([12.5, 12.5, 0.1], center=true);
    translate([0, 0, -8]) {
      cube([18.2, 18.2, 0.1], center=true);
    }
    translate([0, 0, -13.6]) {
      difference() {
        translate([-9.55, -10.2, -4.99]) {
          cube([19.1, 20.4, 4.98]);
        }
        switch_hole_xyplane_centered();
      }
    }
  }
}