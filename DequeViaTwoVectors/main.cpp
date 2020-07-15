#include <iostream>
#include <vector>
#include <exception>
//#include "test_runner.h"

using namespace std;

template <typename T>
class Deque{
private:
    vector<T> front;
    vector<T> back;
public:
    bool Empty() const{
        return front.empty()&&back.empty();
    }
    size_t Size() const{
        return front.size()+back.size();
    }
    T& operator[](size_t index){
        if(index+1>front.size()){
            return back[index-front.size()];
        }
        return front[front.size()-1-index];
    }
    const T& operator[](size_t index) const {
        if(index+1>front.size()){
            return back[index-front.size()];
        }
        return front[front.size()-1-index];
    }
    T& At(size_t index){
        if(index+1>front.size()+back.size()){
            throw(out_of_range("Out_of_Range"));
        }
        if(index+1>front.size()){
            return back[index-front.size()];
        }
        return front[front.size()-1-index];
    }
    const T& At(size_t index) const {
        if(index+1>front.size()+back.size()){
            throw(out_of_range("Out_of_Range"));
        }
        if(index+1>front.size()){
            return back[index-front.size()];
        }
        return front[front.size()-1-index];
    }
    T& Front(){
        if(front.empty()){
            return back.front();
        }
        return front.back();
    }
    const T& Front() const {
        if(front.empty()){
            return back.front();
        }
        return front.back();
    }
    T& Back(){
        if(back.empty()){
            return front.front();
        }
        return back.back();
    }
    const T& Back() const {
        if(back.empty()){
            return front.front();
        }
        return back.back();
    }
    void PushFront(const T& a){
        front.push_back(a);
    }
    void PushBack(const T& a){
        back.push_back(a);
    }
};
/*
void TestEmpty() {
    Deque<int> d;
    ASSERT_EQUAL(d.Empty(), true);
}
void TestPushBack() {
    Deque<int> d;
    d.PushBack(1);
    d.PushBack(5);
    d.PushBack(6);
    ASSERT_EQUAL(d[0], 1);
    ASSERT_EQUAL(d[1], 5);
    ASSERT_EQUAL(d[2], 6);
    Deque<int> db;
    db.PushBack(1);
    ASSERT_EQUAL(db.Front(), 1);
    ASSERT_EQUAL(db.Back(), 1);
    ASSERT_EQUAL(db.Front(), db.Back());
}
void TestPushFront() {
    Deque<int> d;
    d.PushFront(1);
    d.PushFront(5);
    d.PushFront(6);
    ASSERT_EQUAL(d[0], 6);
    ASSERT_EQUAL(d[1], 5);
    ASSERT_EQUAL(d[2], 1);
    Deque<int> db;
    db.PushFront(1);
    ASSERT_EQUAL(db.Front(), 1);
    ASSERT_EQUAL(db.Back(), 1);
    ASSERT_EQUAL(db.Front(), db.Back());
}
void TestSize() {
    Deque<int> d;
    d.PushFront(1);
    d.PushFront(5);
    ASSERT_EQUAL(d.Size(), 2);
    d.PushBack(2);
    d.PushFront(7);
    ASSERT_EQUAL(d.Size(), 4);
}
void TestFront() {
    Deque<int> d;
    d.PushFront(1);
    ASSERT_EQUAL(d.Front(), 1);
    d.PushFront(5);
    ASSERT_EQUAL(d.Front(), 5);
    d.PushBack(2);
    d.PushFront(7);
    ASSERT_EQUAL(d.Front(), 7);
//    Deque<int> dq;
//    ASSERT_EQUAL(db.Front(), 1);
//    ASSERT_EQUAL(db.Back(), 1);
//    ASSERT_EQUAL(db.Front(), db.Back());
}
void TestBack() {
    Deque<int> d;
    d.PushBack(1);
    ASSERT_EQUAL(d.Back(), 1);
    d.PushFront(5);
    d.PushBack(2);
    d.PushFront(7);
    ASSERT_EQUAL(d.Back(), 2);
}
void TestAt() {
    Deque<int> d;
    d.PushBack(1);
    d.PushBack(1);
    d.PushBack(4);
    d.PushFront(2);
    d.PushBack(2);
    d.PushFront(4);
    d.PushFront(7);
    d.PushFront(4);
    ASSERT_EQUAL(d.At(0), 4);
    ASSERT_EQUAL(d.At(3), 2);
    ASSERT_EQUAL(d.At(5), 1);
    ASSERT_EQUAL(d.At(7), 2);
    ASSERT_EQUAL(d.At(7), d[7]);
    Deque<double> db;
    db.PushBack(1.0);
    db.PushBack(2.4);
    db.PushBack(3.9);
    db.PushFront(0.5);
    db.PushBack(2.2);
    db.PushFront(4.7);
    ASSERT_EQUAL(db.At(0), 4.7);
    ASSERT_EQUAL(db.At(3), 2.4);
    ASSERT_EQUAL(db.At(5), 2.2);
    Deque<char> cr;
    cr.PushBack('r');
    cr.PushBack('z');
    cr.PushBack('i');
    cr.PushFront('w');
    cr.PushBack('p');
    cr.PushFront('q');
    ASSERT_EQUAL(cr.At(0), 'q');
    ASSERT_EQUAL(cr.At(3), 'z');
    ASSERT_EQUAL(cr.At(5), 'p');
    try {
        d.At(8);
    } catch (const out_of_range& our) {
        ASSERT(our.what());
    }
    try {
        db[8];
    } catch (const out_of_range& our) {
        ASSERT(our.what());
    }
}
*/

int main() {
//    TestRunner tr;
//    RUN_TEST(tr, TestEmpty);
//    RUN_TEST(tr, TestPushBack);
//    RUN_TEST(tr, TestPushFront);
//    RUN_TEST(tr, TestSize);
//    RUN_TEST(tr, TestFront);
//    RUN_TEST(tr, TestBack);
//    RUN_TEST(tr, TestAt);
    return 0;
}

