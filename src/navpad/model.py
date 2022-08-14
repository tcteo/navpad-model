import scadgen as s
import math
import collections

tab_width = .8
switch_size = 14
tab_len = 3
zfe = 0.001
latch_plate_width = 1.6  # plate thickness at the latch
latch_notch_depth = 1
latch_notch_width = 4
latch_notch_height = 2
switch_border_x = 2.55  # border on left and right
switch_border_y = 3.2  # border on top and bottom
zheight = 5  # set to 5 for proper build?
x_spacing = (switch_size + (2*switch_border_x))
side_plate_thickness = 5
show_keycap_planes = False  # set to True for devel
switch_z_offset = 13.6  # below keycap plane

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
                s.cube([switch_size+2*switch_border_x+2*zfe,
                        switch_size+2*switch_border_y+2*zfe, zheight-2*zfe], center=True)
            # Cut out hole for the switch.
            switch_hole_xyplane_centered()


def translate_rotate_2d(x, y, rz, tx, ty):
    x2 = (x * math.cos(math.radians(rz))) - (y * math.sin(math.radians(rz)))
    y2 = (x * math.sin(math.radians(rz))) + (y * math.cos(math.radians(rz)))
    x3 = x2 + tx
    y3 = y2 + ty
    return [x3, y3]


def main():
    m = s.ScadContext()
    x_by_col = [col*x_spacing for col in range(0, 5)]

    row_yoffsets = [0, 18, 35, 53]
    row_angles = [0, 10, 22, 34]
    row_zoffsets = [0, 1.6, 6.5, 13]
    assert len(row_yoffsets) == len(row_angles) == len(row_zoffsets)
    RowCorners = collections.namedtuple('RowCorners', ['ne', 'nw', 'sw', 'se'])
    row_corners = []
    for ri in range(0, len(row_yoffsets)):
        row_corners.append(RowCorners(
            translate_rotate_2d(
                switch_border_y+switch_size/2, -switch_z_offset,
                -row_angles[ri], -row_yoffsets[ri], row_zoffsets[ri]),
            translate_rotate_2d(
                -switch_border_y-switch_size/2, -switch_z_offset,
                -row_angles[ri], -row_yoffsets[ri], row_zoffsets[ri]),
            translate_rotate_2d(
                -switch_border_y-switch_size/2, -zheight - switch_z_offset,
                -row_angles[ri], -row_yoffsets[ri], row_zoffsets[ri]),
            translate_rotate_2d(
                switch_border_y+switch_size/2, -zheight - switch_z_offset,
                -row_angles[ri], -row_yoffsets[ri], row_zoffsets[ri]),
        ))

    with m:
        for x in x_by_col:
            for ri in range(0, len(row_yoffsets)):
                y = row_yoffsets[ri]
                yangle = row_angles[ri]
                z = row_zoffsets[ri]
                with s.translate([x, y, z]) + s.rotate([yangle, 0, 0]):
                    mx_keyswitch_frame(
                        z_offset=switch_z_offset, show_keycap_planes=show_keycap_planes)

        # fillers for gaps between rows
        for ri in range(0, len(row_yoffsets)-1):
            with s.translate([-(switch_size/2+switch_border_x), 0, 0]) + s.rotate([90, 0, 270]) + s.mirror([0, 0, 1]):
                with s.linear_extrude(height=len(x_by_col)*(switch_size+2*switch_border_x)):
                    s.polygon(
                        points=[
                            row_corners[ri].nw,
                            row_corners[ri].sw,
                            row_corners[ri+1].se,
                            row_corners[ri+1].ne])

        side_panel_poly_points = []
        for ri in range(len(row_yoffsets)-1, -1, -1):
            side_panel_poly_points.extend(
                [row_corners[ri].nw, row_corners[ri].ne])
        side_panel_poly_points.extend([
            [row_corners[0].ne[0], -25],
            # assuming the top row has a positive angle, the rear-most corner is the SW corner
            # extend the side panel to the vertical line from this point
            [row_corners[-1].sw[0], -25],
            row_corners[-1].sw
        ])
        with s.translate([-(switch_size/2+switch_border_x), 0, 0]):
            with s.rotate([90, 0, 270]):
                with s.linear_extrude(height=side_plate_thickness):
                    s.polygon(points=side_panel_poly_points)
        with s.translate([-(switch_size/2+switch_border_x) + len(x_by_col)*(switch_size+2*switch_border_x) + side_plate_thickness - zfe, 0, 0]):
            with s.rotate([90, 0, 270]):
                with s.linear_extrude(height=side_plate_thickness):
                    s.polygon(points=side_panel_poly_points)

        # front panel
        front_panel_thickness = 4
        front_panel_fillet_dia = front_panel_thickness
        with s.translate([
                -switch_size/2-switch_border_x-side_plate_thickness,
                -front_panel_thickness-switch_size/2-switch_border_y,
                -25]):
            s.cube([len(x_by_col)*(switch_size+2*switch_border_x)+2*side_plate_thickness,
                    front_panel_thickness,
                    25-13.6-front_panel_thickness])
        with s.translate([len(x_by_col)*(switch_size+2*switch_border_x) + side_plate_thickness - switch_size/2-switch_border_x, -switch_size/2-switch_border_y, -13.6-front_panel_thickness]) + s.rotate([90,0,270]):
          with s.linear_extrude(height=len(x_by_col)*(switch_size+2*switch_border_x) + 2*side_plate_thickness):
            with s.difference():
              s.circle(r=front_panel_fillet_dia, center=True)
              with s.union():
                with s.translate([-front_panel_fillet_dia, 0]): s.square([front_panel_fillet_dia,front_panel_fillet_dia], center=False)
                with s.translate([-front_panel_fillet_dia,-front_panel_fillet_dia]): s.square([front_panel_fillet_dia,front_panel_fillet_dia], center=False)
                with s.translate([ 0,-front_panel_fillet_dia]): s.square([front_panel_fillet_dia,front_panel_fillet_dia], center=False)

    # print(m.gen())
    with open('model.scad', 'w') as f:
        # TODO update scadgen to support global declarations (eg. $fn)
        f.writelines([s+'\n' for s in [
            '$fn=72;'
        ]])
        f.write(m.gen())


if __name__ == '__main__':
    main()
