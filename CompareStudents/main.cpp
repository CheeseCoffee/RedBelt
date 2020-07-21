//
// Created by Akbar on 20.07.2020.
//
#include <iostream>
#include <sstream>
#include <algorithm>
#include <set>
#include <string>
#include <vector>

using namespace std;

class Learner {
private:
    set<string> dict0;

public:
    int Learn(const vector<string>& words) {
        int newWords = 0;
        for (const auto& word : words) {
            if(dict0.insert(word).second){
                newWords++;
            }
            /*if (find(dict.begin(), dict.end(), word) == dict.end()) {
                ++newWords;
                dict.push_back(word);
            }*/
        }
        return newWords;
    }

    vector<string> KnownWords() {
        //sort(dict.begin(), dict.end());
        //dict.erase(unique(dict.begin(), dict.end()), dict.end());
        vector<string> dict;
        for(const auto& word: dict0){
            dict.push_back(word);
        }
        return dict;
    }
};


int main() {
    Learner learner;
    string line;
    while (getline(cin, line)) {
        vector<string> words;
        stringstream ss(line);
        string word;
        while (ss >> word) {
            words.push_back(word);
        }
        cout << learner.Learn(words) << "\n";
    }
    cout << "=== known words ===\n";
    for (auto word : learner.KnownWords()) {
        cout << word << "\n";
    }
}