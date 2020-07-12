#include "test_runner.h"

#include <ostream>
using namespace std;

#define PRINT_VALUES(out, x, y) out << (x) << endl << (y) << endl

int main() {
  TestRunner tr;
  tr.RunTest([] {
    ostringstream output;
    PRINT_VALUES(output, 1, "else belt");
    ASSERT_EQUAL(output.str(), "1\nelse belt\n");
  }, "PRINT_VALUES usage example");
}
