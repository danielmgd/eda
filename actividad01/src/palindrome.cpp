
#include <iostream>
#include <vector>

using namespace std;


    bool is_palindrome(string word) {
        int cont=0;
        int a=word.size();
        for (int i=0; i<a;i++){
            if(word[i]==' '){
                 cont++;
                for(int j=i+1; j<=a;j++){
                    word[j-1]=word[j];
                }
            }
        }
        for(int i=0; i<cont;i++){
            word.pop_back();
        }

        string resultante;
        for(int i=word.size()-1;i>=0;i--){
            resultante+= word[i];
        }
        if(word==resultante){
            return true ;
        }else{
            return false ;
        }
    }
    int main() {
        std::vector<std::string> phrases{{"ana", "yo soy", "isaac no ronca asi"}};

        for ( auto word: phrases) {
             std::cout << word << "? " << is_palindrome(word) << std::endl;
        }


    return 0;
}
