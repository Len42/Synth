#if !defined(PROGMEM)
#define PROGMEM
#endif

// table=Sine npoints=512 nbits=16 type=uint16_t uMax=65535
const uint16_t cSineTable = 512;
const PROGMEM uint16_t SineTable[] = {
    32768, 33170, 33572, 33974, 34376, 34777, 35179, 35579, 
    35980, 36380, 36779, 37178, 37576, 37973, 38370, 38766, 
    39161, 39555, 39948, 40339, 40730, 41119, 41508, 41895, 
    42280, 42664, 43047, 43428, 43807, 44185, 44561, 44935, 
    45308, 45678, 46047, 46414, 46778, 47141, 47501, 47859, 
    48215, 48568, 48919, 49268, 49614, 49958, 50299, 50637, 
    50973, 51306, 51636, 51963, 52288, 52609, 52928, 53243, 
    53556, 53865, 54171, 54474, 54774, 55070, 55363, 55652, 
    55938, 56221, 56500, 56776, 57047, 57316, 57580, 57841, 
    58098, 58351, 58601, 58846, 59088, 59325, 59559, 59788, 
    60014, 60235, 60452, 60665, 60874, 61079, 61279, 61475, 
    61667, 61854, 62037, 62216, 62390, 62560, 62725, 62886, 
    63042, 63193, 63340, 63483, 63621, 63754, 63882, 64006, 
    64125, 64239, 64349, 64454, 64554, 64649, 64740, 64826, 
    64906, 64982, 65054, 65120, 65181, 65238, 65290, 65336, 
    65378, 65415, 65447, 65474, 65497, 65514, 65526, 65534, 
    65535, 65534, 65526, 65514, 65497, 65474, 65447, 65415, 
    65378, 65336, 65290, 65238, 65181, 65120, 65054, 64982, 
    64906, 64826, 64740, 64649, 64554, 64454, 64349, 64239, 
    64125, 64006, 63882, 63754, 63621, 63483, 63340, 63193, 
    63042, 62886, 62725, 62560, 62390, 62216, 62037, 61854, 
    61667, 61475, 61279, 61079, 60874, 60665, 60452, 60235, 
    60014, 59788, 59559, 59325, 59088, 58846, 58601, 58351, 
    58098, 57841, 57580, 57316, 57047, 56776, 56500, 56221, 
    55938, 55652, 55363, 55070, 54774, 54474, 54171, 53865, 
    53556, 53243, 52928, 52609, 52288, 51963, 51636, 51306, 
    50973, 50637, 50299, 49958, 49614, 49268, 48919, 48568, 
    48215, 47859, 47501, 47141, 46778, 46414, 46047, 45678, 
    45308, 44935, 44561, 44185, 43807, 43428, 43047, 42664, 
    42280, 41895, 41508, 41119, 40730, 40339, 39948, 39555, 
    39161, 38766, 38370, 37973, 37576, 37178, 36779, 36380, 
    35980, 35579, 35179, 34777, 34376, 33974, 33572, 33170, 
    32768, 32366, 31964, 31562, 31160, 30759, 30357, 29957, 
    29556, 29156, 28757, 28358, 27960, 27563, 27166, 26770, 
    26375, 25981, 25588, 25197, 24806, 24417, 24028, 23641, 
    23256, 22872, 22489, 22108, 21729, 21351, 20975, 20601, 
    20228, 19858, 19489, 19122, 18758, 18395, 18035, 17677, 
    17321, 16968, 16617, 16268, 15922, 15578, 15237, 14899, 
    14563, 14230, 13900, 13573, 13248, 12927, 12608, 12293, 
    11980, 11671, 11365, 11062, 10762, 10466, 10173, 9884, 
    9598, 9315, 9036, 8760, 8489, 8220, 7956, 7695, 
    7438, 7185, 6935, 6690, 6448, 6211, 5977, 5748, 
    5522, 5301, 5084, 4871, 4662, 4457, 4257, 4061, 
    3869, 3682, 3499, 3320, 3146, 2976, 2811, 2650, 
    2494, 2343, 2196, 2053, 1915, 1782, 1654, 1530, 
    1411, 1297, 1187, 1082, 982, 887, 796, 710, 
    630, 554, 482, 416, 355, 298, 246, 200, 
    158, 121, 89, 62, 39, 22, 10, 2, 
    0, 2, 10, 22, 39, 62, 89, 121, 
    158, 200, 246, 298, 355, 416, 482, 554, 
    630, 710, 796, 887, 982, 1082, 1187, 1297, 
    1411, 1530, 1654, 1782, 1915, 2053, 2196, 2343, 
    2494, 2650, 2811, 2976, 3146, 3320, 3499, 3682, 
    3869, 4061, 4257, 4457, 4662, 4871, 5084, 5301, 
    5522, 5748, 5977, 6211, 6448, 6690, 6935, 7185, 
    7438, 7695, 7956, 8220, 8489, 8760, 9036, 9315, 
    9598, 9884, 10173, 10466, 10762, 11062, 11365, 11671, 
    11980, 12293, 12608, 12927, 13248, 13573, 13900, 14230, 
    14563, 14899, 15237, 15578, 15922, 16268, 16617, 16968, 
    17321, 17677, 18035, 18395, 18758, 19122, 19489, 19858, 
    20228, 20601, 20975, 21351, 21729, 22108, 22489, 22872, 
    23256, 23641, 24028, 24417, 24806, 25197, 25588, 25981, 
    26375, 26770, 27166, 27563, 27960, 28358, 28757, 29156, 
    29556, 29957, 30357, 30759, 31160, 31562, 31964, 32366, 
    32768, 
};

// table=FreqMap npoints=614 nbits=16 type=uint16_t uMax=65535
const uint16_t cFreqMapTable = 614;
const PROGMEM uint16_t FreqMapTable[] = {
    13, 13, 13, 13, 13, 14, 14, 14, 
    14, 14, 15, 15, 15, 15, 15, 16, 
    16, 16, 16, 16, 17, 17, 17, 17, 
    18, 18, 18, 18, 19, 19, 19, 19, 
    20, 20, 20, 20, 21, 21, 21, 22, 
    22, 22, 23, 23, 23, 23, 24, 24, 
    24, 25, 25, 25, 26, 26, 27, 27, 
    27, 28, 28, 28, 29, 29, 30, 30, 
    30, 31, 31, 32, 32, 33, 33, 33, 
    34, 34, 35, 35, 36, 36, 37, 37, 
    38, 38, 39, 39, 40, 40, 41, 41, 
    42, 43, 43, 44, 44, 45, 46, 46, 
    47, 48, 48, 49, 50, 50, 51, 52, 
    52, 53, 54, 54, 55, 56, 57, 57, 
    58, 59, 60, 61, 61, 62, 63, 64, 
    65, 66, 67, 68, 69, 69, 70, 71, 
    72, 73, 74, 75, 76, 77, 79, 80, 
    81, 82, 83, 84, 85, 86, 88, 89, 
    90, 91, 92, 94, 95, 96, 98, 99, 
    100, 102, 103, 104, 106, 107, 109, 110, 
    112, 113, 115, 116, 118, 120, 121, 123, 
    125, 126, 128, 130, 131, 133, 135, 137, 
    139, 141, 143, 145, 147, 149, 151, 153, 
    155, 157, 159, 161, 163, 166, 168, 170, 
    172, 175, 177, 180, 182, 185, 187, 190, 
    192, 195, 197, 200, 203, 206, 208, 211, 
    214, 217, 220, 223, 226, 229, 232, 236, 
    239, 242, 245, 249, 252, 256, 259, 263, 
    266, 270, 273, 277, 281, 285, 289, 293, 
    297, 301, 305, 309, 313, 317, 322, 326, 
    331, 335, 340, 344, 349, 354, 359, 364, 
    369, 374, 379, 384, 389, 394, 400, 405, 
    411, 416, 422, 428, 434, 440, 446, 452, 
    458, 464, 470, 477, 483, 490, 497, 503, 
    510, 517, 524, 532, 539, 546, 554, 561, 
    569, 577, 584, 592, 601, 609, 617, 626, 
    634, 643, 651, 660, 669, 679, 688, 697, 
    707, 716, 726, 736, 746, 756, 767, 777, 
    788, 798, 809, 820, 832, 843, 855, 866, 
    878, 890, 902, 914, 927, 940, 952, 965, 
    979, 992, 1006, 1019, 1033, 1047, 1062, 1076, 
    1091, 1106, 1121, 1136, 1152, 1167, 1183, 1199, 
    1216, 1232, 1249, 1266, 1284, 1301, 1319, 1337, 
    1355, 1374, 1393, 1412, 1431, 1450, 1470, 1490, 
    1511, 1531, 1552, 1573, 1595, 1617, 1639, 1661, 
    1684, 1707, 1730, 1754, 1778, 1802, 1826, 1851, 
    1877, 1902, 1928, 1955, 1981, 2008, 2036, 2064, 
    2092, 2120, 2149, 2179, 2208, 2239, 2269, 2300, 
    2332, 2363, 2396, 2428, 2462, 2495, 2529, 2564, 
    2599, 2634, 2670, 2707, 2744, 2781, 2819, 2858, 
    2897, 2936, 2976, 3017, 3058, 3100, 3142, 3185, 
    3229, 3273, 3318, 3363, 3409, 3455, 3503, 3550, 
    3599, 3648, 3698, 3748, 3800, 3851, 3904, 3957, 
    4011, 4066, 4122, 4178, 4235, 4293, 4352, 4411, 
    4471, 4532, 4594, 4657, 4720, 4785, 4850, 4917, 
    4984, 5052, 5121, 5191, 5262, 5333, 5406, 5480, 
    5555, 5631, 5708, 5786, 5865, 5945, 6026, 6108, 
    6192, 6276, 6362, 6449, 6537, 6626, 6717, 6808, 
    6901, 6996, 7091, 7188, 7286, 7386, 7487, 7589, 
    7692, 7797, 7904, 8012, 8121, 8232, 8345, 8459, 
    8574, 8691, 8810, 8930, 9052, 9176, 9301, 9428, 
    9557, 9687, 9820, 9954, 10090, 10228, 10367, 10509, 
    10652, 10798, 10945, 11095, 11246, 11400, 11556, 11713, 
    11873, 12036, 12200, 12367, 12535, 12707, 12880, 13056, 
    13234, 13415, 13598, 13784, 13972, 14163, 14356, 14553, 
    14751, 14953, 15157, 15364, 15574, 15786, 16002, 16221, 
    16442, 16667, 16894, 17125, 17359, 17596, 17836, 18080, 
    18327, 18577, 18831, 19088, 19349, 19613, 19881, 20152, 
    20427, 20706, 20989, 21276, 21566, 21861, 22160, 22462, 
    22769, 23080, 23395, 23715, 24038, 24367, 24700, 25037, 
    25379, 25725, 26077, 26433, 26794, 27160, 27531, 27907, 
    28288, 28674, 29066, 29463, 29865, 30273, 30686, 31105, 
    31530, 31961, 32397, 32840, 33288, 33743, 34204, 34671, 
    35144, 35624, 36111, 36604, 37104, 37611, 38124, 38645, 
    39173, 39708, 40250, 40800, 41357, 41922, 42494, 43074, 
    43663, 44259, 44863, 45476, 46097, 46727, 47365, 48012, 
    48667, 49332, 50006, 50689, 51381, 52083, 52794, 
};

// table=LEDMap npoints=255 nbits=16 type=uint8_t uMax=65535
const uint8_t cLEDMapTable = 255;
const PROGMEM uint8_t LEDMapTable[] = {
    0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 
    1, 1, 1, 1, 1, 1, 1, 1, 
    1, 1, 1, 1, 1, 1, 1, 1, 
    2, 2, 2, 2, 2, 2, 2, 2, 
    2, 2, 2, 2, 2, 2, 2, 2, 
    3, 3, 3, 3, 3, 3, 3, 3, 
    3, 3, 4, 4, 4, 4, 4, 4, 
    4, 4, 4, 4, 4, 4, 5, 5, 
    5, 5, 5, 5, 5, 5, 5, 6, 
    6, 6, 6, 6, 6, 6, 6, 7, 
    7, 7, 7, 7, 7, 8, 8, 8, 
    8, 8, 8, 9, 9, 9, 9, 9, 
    10, 10, 10, 10, 10, 11, 11, 11, 
    11, 12, 12, 12, 12, 13, 13, 13, 
    14, 14, 14, 14, 15, 15, 15, 16, 
    16, 17, 17, 17, 18, 18, 18, 19, 
    19, 20, 20, 21, 21, 21, 22, 22, 
    23, 23, 24, 24, 25, 26, 26, 27, 
    27, 28, 28, 29, 30, 30, 31, 32, 
    32, 33, 34, 35, 35, 36, 37, 38, 
    39, 39, 40, 41, 42, 43, 44, 45, 
    46, 47, 48, 49, 50, 51, 52, 53, 
    55, 56, 57, 58, 60, 61, 62, 64, 
    65, 66, 68, 69, 71, 72, 74, 76, 
    77, 79, 81, 82, 84, 86, 88, 90, 
    92, 94, 96, 98, 100, 103, 105, 107, 
    109, 112, 114, 117, 119, 122, 125, 127, 
    130, 133, 136, 139, 142, 145, 148, 152, 
    155, 158, 162, 165, 169, 173, 177, 180, 
    184, 188, 193, 197, 201, 206, 210, 215, 
    219, 224, 229, 234, 239, 245, 250, 255, 
};
