import scadgen as s

tab_width = 1
switch_size = 14
tab_len = 4
zfe = 0.01
latch_plate_width = 1.6  # plate thickness at the latch
latch_notch_depth = 1
latch_notch_width = 4
latch_notch_height = 2
switch_border_x = 2.55  # border on left and right
switch_border_y = 3.2  # border on top and bottom
zheight = 5  # set to 5 for proper build?
x_spacing = (switch_size + (2*switch_border_x) - 2*zfe)
show_keycap_planes = True

with s.ScadModule('side_tab_half_cyl') as side_tab_half_cyl:
    with s.translate([0, tab_width, switch_size/2]):
        with s.rotate([0, 180, 0]):
            with s.difference():
                s.cylinder(h=tab_len, r=tab_width, center=True)
                with s.translate([0, -tab_len/2, -tab_len/2-zfe]):
                    s.cube([tab_width*2, tab_len+2*zfe, 2*tab_len+2*zfe])


with s.ScadModule('switch_hole_upright') as switch_hole_upright:
    with s.translate([-switch_size/2, 0, -switch_size/2]):
        with s.union():
            with s.difference():
                s.cube([switch_size, zheight, switch_size])
                with s.translate([-zfe, 0, 0]):
                    side_tab_half_cyl()
                    with s.translate([switch_size+zfe, 0, 0]):
                        with s.mirror([1, 0, 0]):
                            side_tab_half_cyl()
            with s.translate([switch_size/2-2, latch_plate_width, -latch_notch_depth+zfe]):
                s.cube([latch_notch_width, latch_notch_height, latch_notch_depth])
            with s.translate([switch_size/2-2, latch_plate_width, switch_size-zfe]):
                s.cube([latch_notch_width, latch_notch_height, latch_notch_depth])

with s.ScadModule('switch_hole_xyplane_centered') as switch_hole_xyplane_centered:
    with s.rotate([-90, 0, 0]):
        switch_hole_upright()

# with s.ScadModule('mx_keyswitch_hole') as mx_keyswitch_hole:


def mx_keyswitch_hole(x=None, y=None, z=None, xangle=None, yangle=None, z_offset=None, show_keycap_planes=False):
    with s.translate([x, y, z]):
        with s.rotate([yangle, xangle, 0]):
            with s.translate([0, 0, -z_offset]):
                with s.difference():
                    with s.translate([-switch_size/2-switch_border_x, -switch_size/2-switch_border_y, -zheight + zfe]):
                        s.cube([switch_size+2*switch_border_x,
                               switch_size+2*switch_border_y, zheight-2*zfe])
                    switch_hole_xyplane_centered()
    if show_keycap_planes:
        with s.translate([x,y,z]):
            with s.rotate([yangle, xangle, 0]):
                s.cube([12.5,12.5,0.2], center=True)
            with s.rotate([yangle, xangle, 0]):
                with s.translate([0,0,-8]):
                    s.cube([18.2,18.2,0.2], center=True)


def main():
    m = s.ScadContext()
    with m:
        for col in range(0, 5):
            colx = col * x_spacing
            # bottom row
            mx_keyswitch_hole(x=colx, y=0, z=0, xangle=0,
                              yangle=0, z_offset=13.6,
                              show_keycap_planes=show_keycap_planes)
            # middle row
            mx_keyswitch_hole(x=colx, y=17.5, z=1.5, xangle=0,
                              yangle=10, z_offset=13.6,
                              show_keycap_planes=show_keycap_planes)
            # top row
            mx_keyswitch_hole(x=colx, y=34, z=6, xangle=0,
                              yangle=22, z_offset=13.6,
                              show_keycap_planes=show_keycap_planes)

    # print(m.gen())
    with open('model.scad', 'w') as f:
        # TODO update scadgen to support global declarations (eg. $fn)
        f.writelines([s+'\n' for s in [
            '$fn=72;'
        ]])
        f.write(m.gen())


if __name__ == '__main__':
    main()
