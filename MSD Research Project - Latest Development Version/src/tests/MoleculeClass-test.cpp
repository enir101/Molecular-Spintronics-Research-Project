#include <iostream>
#include "../MSD.h"

using namespace udc;
using namespace std;

int main() {
	MSD msd(11, 5, 5);

	Molecule mol(msd);

	return 0;
}
