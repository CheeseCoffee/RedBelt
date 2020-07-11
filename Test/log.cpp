#include "test_runner.h"
#include <sstream>
#include <string>
using namespace std;

class Logger {
public:
  explicit Logger(ostream& output_stream) : os(output_stream) {
  }

  void SetLogLine(bool value) { log_line = value; }
  void SetLogFile(bool value) { log_file= value; }
  void SetLine(const int& line);
  void SetFile(const string& file);


  void Log(const string& message);

private:
  ostream& os;
  bool log_line = false;
  bool log_file = false;
  int _line;
  string _file;
};

#define LOG(logger, message) logger.SetFile(__FILE__); logger.SetLine(__LINE__); logger.Log(message);

void Logger::Log(const string &message) {
    if(log_file and log_line){
        os<<_file<<":"<<_line<<" ";
    }else if(log_file){
        os<<_file<<" ";
    }else if(log_line){
        os<<"Line "<<_line<<" ";
    }
    os<<message<<endl;

}

void Logger::SetFile(const string &file) {
    _file=file;
}

void Logger::SetLine(const int &line) {
    _line=line;
}

void TestLog() {
/* Для написания юнит-тестов в этой задаче нам нужно фиксировать конкретные
 * номера строк в ожидаемом значении (см. переменную expected ниже). Если
 * мы добавляем какой-то код выше функции TestLog, то эти номера строк меняются,
 * и наш тест начинает падать. Это неудобно.
 *
 * Чтобы этого избежать, мы используем специальный макрос #line
 * (http://en.cppreference.com/w/cpp/preprocessor/line), который позволяет
 * переопределить номер строки, а также имя файла. Благодаря ему, номера
 * строк внутри функции TestLog будут фиксированы независимо от того, какой
 * код мы добавляем перед ней*/
#line 1 "logger.cpp"

  ostringstream logs;
  Logger l(logs);
  LOG(l, "hello");

  l.SetLogFile(true);
  LOG(l, "hello");

  l.SetLogLine(true);
  LOG(l, "hello");

  l.SetLogFile(false);
  LOG(l, "hello");

  string expected = "hello\n";
  expected += "logger.cpp hello\n";
  expected += "logger.cpp:10 hello\n";
  expected += "Line 13 hello\n";
  ASSERT_EQUAL(logs.str(), expected);
}

#define COMBINE1(X,Y) X##Y  // helper macro
#define COMBINE(X,Y) COMBINE1(X,Y)
#define val(val1,val2) int COMBINE(x,__LINE__)=1; cout<<COMBINE(x,__LINE__);

int main() {
    val(1,2)
    val(1,2)
  TestRunner tr;
  RUN_TEST(tr, TestLog);
}
