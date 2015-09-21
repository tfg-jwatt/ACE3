/*
 * Author: KoffeinFlummi
 * Returns the Hadamard Product of two vectors.
 * (x hadamard y) = [x1*y1, x2*y2, x3*y3]
 *
 * Arguments:
 * 0: Vector 1 <ARRAY>
 * 1: Vector 2 <ARRAY>
 *
 * Return Value:
 * Hadamard Product <ARRAY>
 *
 * Public: Yes
 */
#include "script_component.hpp"

params ["_vector1", "_vector2"];

private "_newVector";
_newVector = [];

for "_i" from 0 to ((count _vector1 min count _vector2) - 1) do {
    _newVector pushBack ((_vector1 select _i) * (_vector2 select _i));
};

_newVector
