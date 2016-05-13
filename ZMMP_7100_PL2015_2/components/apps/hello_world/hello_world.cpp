/*
 * Placeholder PetaLinux user application.
 *
 * Replace this with your application code
 */
#include <iostream>
#include <vector>
#include <mutex>
#include <memory>

using namespace std;

int main(int argc, char *argv[])
{
	cout << "Hello, PetaLinux World!\n";
	cout << "cmdline args:\n";
	while(argc--)
		cout << *argv++ << endl;

	mutex _mtx ;
	lock_guard<mutex> lg(_mtx) ;

	//vector<int> v ;
	//shared_ptr <vector<int>> v_ptr(new vector<int> ) ;

	shared_ptr <vector<int>> v_ptr = make_shared<vector<int>>();

	for (int i=0; i< 5 ;i++){
		v_ptr->push_back(i);
	}

	for (int i=0; i<5; i++){
		cout <<"v[" << i << "]:" << v_ptr->at(i) << endl;
	}	

	return 0;
}


