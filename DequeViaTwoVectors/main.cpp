#include <iostream>
#include <vector>

using namespace std;

template <typename T>
class Deque{
private:
    vector<T> front;
    vector<T> back;
public:
    bool Empty() const{

    }
    size_t Size() const{

    }
    T& operator[](size_t index){

    }
    const T& operator[](size_t index) const {

    }
    T& At(size_t index){

    }
    const T& At(size_t index) const {

    }
    T& Front(){

    }
    const T& Front() const {

    }
    T& Back(){

    }
    const T& Back() const {

    }
    void PushFront(const T& a){

    }
    void PushBack(const T& a){

    }
};

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
