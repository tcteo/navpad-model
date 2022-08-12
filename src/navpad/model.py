import scadgen as s
import math

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
    with s.translate([0, tab_width, switch_size/2]) + s.rotate([0, 180, 0]):
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


def mx_keyswitch_frame(z_offset=13.6, show_keycap_planes=False):
    """Frame for a single MX keyswitch."""
    if show_keycap_planes:
        with s.color('blue'):
            # Top of keycap, centered at the origin.
            s.cube([12.5, 12.5, 0.05], center=True)
        with s.color('green') + s.translate([0, 0, -8]):
            s.cube([18.2, 18.2, 0.05], center=True)  # Bottom of keycap.
    # The switch housing, z_offset below the origin.
    with s.translate([0, 0, -z_offset]):
        with s.difference():
            with s.translate([0, 0, -zheight/2]):
                s.cube([switch_size+2*switch_border_x,
                        switch_size+2*switch_border_y, zheight-2*zfe], center=True)
            # Cut out hole for the switch.
            switch_hole_xyplane_centered()


def translate_rotate_2d(x, y, rz, tx, ty):
    x2 = (x * math.cos(math.radians(rz))) - (y * math.sin(math.radians(rz)))
    y2 = (x * math.sin(math.radians(rz))) + (y * math.cos(math.radians(rz)))
    x3 = x2 + tx
    y3 = y2 + ty
    return [x3, y3]

    # # N/S/E/W orientation is looking at the keyboard from the left (from -y to +y)
    # [switch_border_y+switch_size/2,0], # row1 NE
    # [switch_border_y+switch_size/2,-zheight], # row1 SE
    # [-switch_border_y-switch_size/2,-zheight], # row1 SW


switch_z_offset = 13.6  # below keycap plane


def main():
    m = s.ScadContext()
    x_by_col = [col*x_spacing for col in range(0, 5)]
    y_by_row = [0, 18, 35]
    yangle_by_row = [0, 10, 22]
    z_by_row = [0, 1.6, 6.5]
    poly_points = []
    with m:
        for x in x_by_col:
            for yi in range(0, len(y_by_row)):
                y = y_by_row[yi]
                yangle = yangle_by_row[yi]
                z = z_by_row[yi]
                with s.translate([x, y, z]) + s.rotate([yangle, 0, 0]):
                    mx_keyswitch_frame(
                        z_offset=switch_z_offset, show_keycap_planes=show_keycap_planes)

        # end plate
        for yi in range(0, len(y_by_row)):
            # SE
            c = translate_rotate_2d(
                switch_border_y+switch_size/2, -zheight - switch_z_offset,
                -yangle_by_row[yi], -y_by_row[yi], z_by_row[yi])
            print(f'row{yi} SE: {c}')
            poly_points.append(c)
            # SW
            d = translate_rotate_2d(
                -switch_border_y-switch_size/2, -zheight - switch_z_offset,
                -yangle_by_row[yi], -y_by_row[yi], z_by_row[yi])
            print(f'row{yi} SW: {d}')
            poly_points.append(d)
        for yi in range(len(y_by_row)-1, -1, -1):
            # NW
            c = translate_rotate_2d(
                -switch_border_y-switch_size/2, -switch_z_offset,
                -yangle_by_row[yi], -y_by_row[yi], z_by_row[yi])
            print(f'row{yi} NW: {c}')
            poly_points.append(c)
            # NE
            d = translate_rotate_2d(
                switch_border_y+switch_size/2, -switch_z_offset,
                -yangle_by_row[yi], -y_by_row[yi], z_by_row[yi])
            print(f'row{yi} NE: {d}')
            poly_points.append(d)

        with s.color('red'):
            with s.translate([-(switch_size/2+switch_border_x), 0, 0]):
               with s.rotate([90, 0, 270]):
                    with s.linear_extrude(height=0.1):
                        s.polygon(points=poly_points)

    # print(m.gen())
    with open('model.scad', 'w') as f:
        # TODO update scadgen to support global declarations (eg. $fn)
        f.writelines([s+'\n' for s in [
            '$fn=72;'
        ]])
        f.write(m.gen())


if __name__ == '__main__':
    main()
