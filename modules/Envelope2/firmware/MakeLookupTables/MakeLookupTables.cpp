/* MakeLookupTables - Generate lookup tables for use in DigiEnvelope2 firmware

Copyright 2022 Len Popp

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#include <iostream>
#include <iomanip>
#include <limits>
#include "MakeLookupTables.h"

template<typename T>
static void WriteTable(const char* tableName, unsigned npoints, unsigned nbits, const char* typeName, std::ostream& ostr, T func);

int main(int argc, char* argv[])
{
	std::cout << "#if !defined(PROGMEM)" << std::endl << "#define PROGMEM" << std::endl << "#endif" << std::endl << std::endl;
	
	WriteTable("TimeInputMap", 1023/*npoints*/, 32, "uint32_t", std::cout,
		[](unsigned ipoint, unsigned npoints, uint64_t uHalf, uint64_t uMax) -> uint64_t {
			uint64_t n;
			static constexpr uint64_t nMax = (1ull << 24) - 1;
			if (ipoint == 0) {
				n = nMax;
			} else {
				double d = 0.005 * pow(2, 0.0123 * ipoint) - 0.005;
				d = (4096. * 4096. / 20000.) / d;
				n = (uint64_t)std::llround(d);
				if (n > nMax)
					n = nMax;
			}
			return n;
		});

	std::cout << std::endl;

	WriteTable("LogAttackMap", 1024/*npoints*/, 16, "uint16_t", std::cout,
		[](unsigned ipoint, unsigned npoints, uint64_t uHalf, uint64_t uMax) -> uint64_t {
			double d = (1 - exp(-(int)(ipoint) / 444.7168)) / 0.9;
			return (uint64_t)std::llround(d * 4096);
		});

	std::cout << std::endl;

	WriteTable("LogDecayMap", 1024/*npoints*/, 16, "uint16_t", std::cout,
		[](unsigned ipoint, unsigned npoints, uint64_t uHalf, uint64_t uMax) -> uint64_t {
			double d = (1 - exp(-(int)(ipoint) / 150.0)) / 0.999265; // 0.999035;
			return (uint64_t)std::llround(d * 4096);
		});

	std::cout << std::endl;

	WriteTable("LEDMap", 255/*npoints*/, 8, "uint8_t", std::cout,
		[](unsigned ipoint, unsigned npoints, uint64_t uHalf, uint64_t uMax) -> uint64_t {
			uint64_t n;
			if (ipoint < 16) {
				n = 0;
			} else if (ipoint < 32) {
				n = 1;
			} else if (ipoint < 48) {
				n = 2;
			} else {
				double d = pow(2, 0.03136 * ipoint);
				n = (uint64_t)std::llround(d);
			}
			return n;
		});

	return 0;
}

template<typename T>
static void WriteTable(const char* tableName, unsigned npoints, unsigned nbits, const char* typeName, std::ostream& ostr, T func)
{
	const uint64_t uMax = (((uint64_t)1) << nbits) - 1;
	const uint64_t uHalf = ((uint64_t)1) << (nbits - 1);
	ostr << "// table=" << tableName << " npoints=" << npoints << " nbits=" << nbits << " type=" << typeName << " uMax=" << uMax << std::endl;
	ostr << "const " << typeName << " c" << tableName << "Table = " << npoints << ';' << std::endl;
	ostr << "const PROGMEM " << typeName << " " << tableName << "Table[] = {";
	// Iterate npoints+1 times, to get one extra point for interpolation.
	for (unsigned ipoint = 0; ipoint <= npoints; ipoint++) {
		if ((ipoint & 7) == 0)
			ostr << std::endl << "    ";
		uint64_t uVal;
		uVal = func(ipoint, npoints, uHalf, uMax);
		uVal = std::min(uVal, uMax);
		ostr << uVal << ", ";
	}

	ostr << std::endl << "};" << std::endl;
}
