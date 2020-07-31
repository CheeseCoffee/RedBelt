//
// Created by Akbar on 31.07.2020.
//

#include <iostream>
#include <iomanip>
#include <vector>
#include <set>
#include <map>

using namespace std;

class ReadingManager{
public:
    ReadingManager():
    user_page_(MAX_USER_COUNT_ + 1, -1),
    less_page_count_(MAX_PAGE_COUNT_ + 1, 0)
    {}
    void Read(int user_id,int page_count){
        if(user_page_[user_id]!=-1){
            int prev_page=user_page_[user_id];
            page_user_[prev_page].erase(user_id);
            for(int i=prev_page+1;i<page_count+1;i++){
                less_page_count_[i]--;
            }
        }else{
            user_count++;
            for(int i=page_count+1;i<MAX_PAGE_COUNT_+1;i++){
                less_page_count_[i]++;
            }
        }
        user_page_[user_id]=page_count;
        page_user_[page_count].insert(user_id);


    }
    double Cheer(int user_id){
        if(user_page_[user_id]==-1){
            return 0;
        }
        if(user_count==1){
            return 1;
        }
        return less_page_count_[user_page_[user_id]]*1.0/(user_count-1);

    }
private:
    static const int MAX_USER_COUNT_ = 100'000;
    static const int MAX_PAGE_COUNT_ = 1000;
    int user_count=0;
    vector<int> user_page_;
    vector<int> less_page_count_;
    map<int,set<int>> page_user_;
};

int main() {
    // Для ускорения чтения данных отключается синхронизация
    // cin и cout с stdio,
    // а также выполняется отвязка cin от cout
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    ReadingManager manager;

    int query_count;
    cin >> query_count;

    for (int query_id = 0; query_id < query_count; ++query_id) {
        string query_type;
        cin >> query_type;
        int user_id;
        cin >> user_id;

        if (query_type == "READ") {
            int page_count;
            cin >> page_count;
            manager.Read(user_id, page_count);
        } else if (query_type == "CHEER") {
            cout << setprecision(6) << manager.Cheer(user_id) << "\n";
        }
    }

    return 0;
}