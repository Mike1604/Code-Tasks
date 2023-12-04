#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

const double epsilon = 1e-12; // This will help in checking the difference and the approximation to zero.
const int maxIter = 1000;     // This will determine the maximum number of iterations to find an answer.

double polynomial(double a, double b, double c, double d, double x)
{ // This function will provide us with the value of f(x), allowing us to apply the Newton-Raphson Method
    return a * x * x * x + b * x * x + c * x + d;
}

double findDerivative(double a, double b, double c, double x)
{ // This function will provide us with the value of f'(x)
    return 3 * a * x * x + 2 * b * x + c;
}

double newtonRaphsonMethod(double a, double b, double c, double d, double x0)
{ // Here we are going to look for the roots of the polynomial using the Newton-Raphson Method
    double x = x0;
    for (int i = 0; i < maxIter; ++i)
    {
        double fx = polynomial(a, b, c, d, x);
        double dfx = findDerivative(a, b, c, x);

        // Here, I check whether f'(x) is not equal to zero or is very close to zero. After this, I can proceed to divide f(x) by f'(x).
        if (fabs(dfx) < 1e-12)
        {
            return NAN; // It's not possible
        }

        double delta_x = fx / dfx;
        x = x - delta_x; // Here I obtain the current value of X

        if (fabs(delta_x) < epsilon)
        {             // I check if Delta is close to zero.
            return x; // If it is too close to zero, we have found a root of the polynomial
        }
    }
    return NAN; // If we are here, that means that we went through the maximum number of iterations and never found a root
}

bool alreadyIn(double xNumber, vector<double> ans)
{ // This function will help us to check if we have find the root before
    for (auto aux : ans)
    {
        if (abs(aux - xNumber) < epsilon)
        { // We use epsilon to check if the difference between both numbers is too low, indicating that they are the same
            return true;
        }
    }
    return false;
}

int main(int argc, char *argv[])
{
    if (argc < 5 || argc>5)
    {
        cerr << "Error: Se requieren especificamente 4 argumentos (a, b, c, d)." << endl;
        return 1; 
    }
    double a = stod(argv[1]);
    double b = stod(argv[2]);
    double c = stod(argv[3]);
    double d = stod(argv[4]);

    vector<double> ans;

    for (double x = -10.0; x <= 10.0; x += 0.5)
    {
        double root = newtonRaphsonMethod(a, b, c, d, x);
        if (!isnan(root) && !alreadyIn(root, ans))
        {
            ans.push_back(root);
        }
    }

    cout << "{";
    for (int i = 0; i < ans.size(); i++)
    {
        if (i < ans.size() - 1)
        {
            cout << ans[i] << ", ";
        }
        else
            cout << ans[i];
    }
    cout << "}" << endl;

    return 0;
}
