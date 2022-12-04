#include <iostream>

int main(int argc,char * argv[])
{
#ifdef __cplusplus
    std::cout<<__cplusplus<<std::endl;
#else
    std::cout<<"No __cplusplus"<<std::endl;
#endif 
    return 0;
}

// compile_flags.txt
// -std=c++20
