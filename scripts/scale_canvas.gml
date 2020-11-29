/// @function                       scale_canvas(base width, base height, current width, current height, center);
/// @param {int}    base width      The base width for the game room
/// @param {int}    base height     The base height for the game room
/// @param {int}    current width   The current width of the game canvas
/// @param {int}    current height  The current height of the game canvas
/// @param {bool}   center          Set whether to center the game window on the canvas or not

var _bw = argument0;
var _bh = argument1;
var _cw = argument2;
var _ch = argument3;
var _center = argument4;
var _aspect = (_bw / _bh);

if ((_cw / _aspect) > _ch)
    {
    window_set_size((_ch *_aspect), _ch);
    }
else
    {
    window_set_size(_cw, (_cw / _aspect));
    }
if (_center)
    {
    window_center();
    }

view_wport[0] = min(window_get_width(), _bw);
view_hport[0] = min(window_get_height(), _bh)
surface_resize(application_surface, view_wport[0], view_hport[0]);
