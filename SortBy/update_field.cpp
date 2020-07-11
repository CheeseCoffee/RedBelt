//
// Created by akbar on 11.07.2020.
//

#include "airline_ticket.h"
#include "test_runner.h"

#include <vector>
#include <iomanip>

using namespace std;

bool operator<(const Date& lhs, const Date& rhs) {
    // воспользуемся тем фактом, что векторы уже можно сравнивать на <:
    // создадим вектор из года, месяца и дня для каждой даты и сравним их
    return vector<int>{lhs.year, lhs.month, lhs.day} <
           vector<int>{rhs.year, rhs.month, rhs.day};
}

bool operator<(const Time& lhs, const Time& rhs) {
    // воспользуемся тем фактом, что векторы уже можно сравнивать на <:
    // создадим вектор из года, месяца и дня для каждой даты и сравним их
    return vector<int>{lhs.hours, lhs.minutes} <
           vector<int>{rhs.hours, rhs.minutes};
}

bool operator==(const Date& lhs, const Date& rhs) {
    // воспользуемся тем фактом, что векторы уже можно сравнивать на <:
    // создадим вектор из года, месяца и дня для каждой даты и сравним их
    return vector<int>{lhs.year, lhs.month, lhs.day} ==
           vector<int>{rhs.year, rhs.month, rhs.day};
}

bool operator==(const Time& lhs, const Time& rhs) {
    // воспользуемся тем фактом, что векторы уже можно сравнивать на <:
    // создадим вектор из года, месяца и дня для каждой даты и сравним их
    return vector<int>{lhs.hours, lhs.minutes} ==
           vector<int>{rhs.hours, rhs.minutes};
}

ostream& operator<<(ostream& stream, const Date& date) {
    stream << setw(4) << setfill('0') << date.year<<
           "-" << setw(2) << setfill('0') << date.month<<
           "-" << setw(2) << setfill('0') << date.day;
    return stream;
}

ostream& operator<<(ostream& stream, const Time& time) {
    stream << setw(4) << setfill('0') << time.hours<<
           ":" << setw(2) << setfill('0') << time.minutes;
    return stream;
}

istream& operator>>(istream& time_stream, Time& time) {
    bool ok = true;

    int hours;
    ok = ok && (time_stream >> hours);
    ok = ok && (time_stream.peek() == ':');
    time_stream.ignore(1);

    int minutes;
    ok = ok && (time_stream >> minutes);
    ok = ok && time_stream.eof();

    if (!ok) {
        throw logic_error("Wrong time format");
    }

    time.hours=hours;
    time.minutes=minutes;
}

istream& operator>>(istream& date_stream, Date& date) {
    bool ok = true;

    int year;
    ok = ok && (date_stream >> year);
    ok = ok && (date_stream.peek() == '-');
    date_stream.ignore(1);

    int month;
    ok = ok && (date_stream >> month);
    ok = ok && (date_stream.peek() == '-');
    date_stream.ignore(1);

    int day;
    ok = ok && (date_stream >> day);
    ok = ok && date_stream.eof();

    if (!ok) {
        throw logic_error("Wrong date format");
    }
    date.year=year;
    date.month=month;
    date.day=day;
}

// Реализуйте этот макрос, а также необходимые операторы для классов Date и Time
/*
#define con1(x,y) x##y
#define con2(x,y) con1(x,y)
#define UPDATE_FIELD(ticket, field, values) map<string, string>::const_iterator con2(c,__LINE__); \
con2(c,__LINE__) = values.find(#field);                \
if (con2(c,__LINE__) != values.end()) {                 \
istringstream is(con2(c,__LINE__)->second);             \
is >> ticket.field;                             \
}                                               \
*/

#define UPDATE_FIELD(ticket, field, values) \
{map<string, string>::const_iterator it; \
it = values.find(#field);                \
if (it != values.end()) {                 \
istringstream is(it->second);             \
is >> ticket.field;                             \
}}

void TestUpdate() {
    AirlineTicket t;
    t.price = 0;

    const map<string, string> updates1 = {
            {"departure_date", "2018-2-28"},
            {"departure_time", "17:40"},
    };

    UPDATE_FIELD(t, departure_date, updates1);
    UPDATE_FIELD(t, departure_time, updates1);
    UPDATE_FIELD(t, price, updates1);

    ASSERT_EQUAL(t.departure_date, (Date{2018, 2, 28}));
    ASSERT_EQUAL(t.departure_time, (Time{17, 40}));
    ASSERT_EQUAL(t.price, 0);

    const map<string, string> updates2 = {
            {"price", "12550"},
            {"arrival_time", "20:33"},
    };
    UPDATE_FIELD(t, departure_date, updates2);
    UPDATE_FIELD(t, departure_time, updates2);
    UPDATE_FIELD(t, arrival_time, updates2);
    UPDATE_FIELD(t, price, updates2);

    // updates2 не содержит ключей "departure_date" и "departure_time", поэтому
    // значения этих полей не должны измениться
    ASSERT_EQUAL(t.departure_date, (Date{2018, 2, 28}));
    ASSERT_EQUAL(t.departure_time, (Time{17, 40}));
    ASSERT_EQUAL(t.price, 12550);
    ASSERT_EQUAL(t.arrival_time, (Time{20, 33}));
}

int main() {
    TestRunner tr;
    RUN_TEST(tr, TestUpdate);
}
