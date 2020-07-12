#include <string>
#include <vector>
#include <iostream>
using namespace std;

#define test1(x,y) x##y
#define test2(x,y) test1(x,y)
#define UNIQ_ID test2(x,__LINE__)// Реализуйте этот макрос так, чтобы функция main компилировалась
#define COMMAND(NAME)  { #NAME, NAME ## _command }

void quit_command(){};
void help_command(){};

int main() {
    struct command
    {
        char *name;
        void (*function) (void);
    };

    struct command commands[] =
            {
                    COMMAND (quit),
                    COMMAND (help),
            };
    int UNIQ_ID = 0;
    string UNIQ_ID = "hello";
    vector<string> UNIQ_ID = {"hello", "world"};
    vector<int> UNIQ_ID = {1, 2, 3, 4};
}