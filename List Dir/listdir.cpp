#include <iostream>
#include <fstream>
#include <filesystem>

using namespace std;
namespace fs = std::filesystem;

int main(int argc, char* argv[]) {
    if (argc != 2) {
        cout<<"Debe ser ingresado 1 directorio valido"<<endl;
        return 1;
    }

    string directorio = argv[1];
    if (!fs::exists(directorio) || !fs::is_directory(directorio)) {
        cout << "El directorio no existe o no es válido." << endl;
        return 1;
    }

    ofstream output("dir.json");
    output << "{ \"files\": [" << endl;

    bool first = true;
    for (auto entrada : fs::directory_iterator(directorio)) {
        if (fs::is_regular_file(entrada)) {
            if (!first) {
                output << "," << endl;
            }
            output << "  {\"name\":\"" << entrada.path().filename().string()
                   << "\",\"size\":" << fs::file_size(entrada.path()) << "}";
            first = false;
        }
    }

    output << endl << "]}" << endl;
    return 0;
}