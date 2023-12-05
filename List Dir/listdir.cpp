#include <iostream>
#include <fstream>
#include <filesystem>

using namespace std;
namespace fs = std::filesystem;

int main(int argc, char* argv[]) {
    if (argc != 2) { //I check here to see if I have a file path
        cout<<"Debe ser ingresado 1 directorio valido"<<endl;
        return 1;
    }

    string filePath = argv[1];
    if (!fs::exists(filePath) || !fs::is_directory(filePath)) {//I check here to verify if the path is valid, confirming the existence of the directory before proceeding
        cout << "El directorio no existe o no es válido." << endl;
        return 1;
    }

    ofstream output("dir.json"); // I create a new JSON file and proceed to write onto it
    output << "{ \"files\": [" << endl;

    bool first = true;
    for (auto entrada : fs::directory_iterator(filePath)) {//Here, I iterate through all the files in this path.
        if (fs::is_regular_file(entrada)) {//I check if is a regular file so then I can procced
            if (!first) {
                output << "," << endl;
            }
            output << "  {\"name\":\"" << entrada.path().filename().string() //Write the name and size of the current file being iterated
                   << "\",\"size\":" << fs::file_size(entrada.path()) << "}";
            first = false;
        }
    }

    output << endl << "]}" << endl;
    return 0;
}