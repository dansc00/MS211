#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// define f(x)
double f(double x){

    return pow(x,2)*log(x) - 2;
}

// derivada de f(x)
double f_linha(double x){

    return 2*x*log(x) + x;
}

// define g(x)
double g(double x){

    return exp(x) - pow(x,3) - 2;
}

// método da bissecção para g(x)
double bisseccao(double a, double b, double e){

    int k = 0;
    double xk = (a + b)/2;

    while(fabs(g(xk)) > e || fabs(b-a) > e){

        if(g(a) * g(xk) < 0)
            b = xk;
        else
            a = xk;

        xk = (a + b)/ 2;
        k++;
    }

    return xk;
}

// método de newton_raphson para f(x)
double newton_raphson(double xk, double e1, double e2){

    int k = 0;
    double x_ant;
    double f0 = xk;
    double dr = e2 + 1;

    while(fabs(f0) > e1 || dr < e2){

        k++;
        x_ant = xk;
        xk = xk - (f(xk) / f_linha(xk));
        dr = fabs(xk - x_ant);
        f0 = f(xk);
    }

    return xk;
}

int main(){

    // raiz de f no intervalo (1,5 ; 2) com aproximação inicial de 1,7
    printf("Raiz de f = %.6lf\n", newton_raphson(1.7, pow(10, -6), pow(10, -6)));

    // raiz de g no intervalo (-1,5 ; -1) 
    printf("Raiz 1 de g = %.3lf\n", bisseccao(-1.5, -1, pow(10, -3)));

    // raiz de g no intervalo (4,5 ; 5)
    printf("Raiz 2 de g = %.3lf\n", bisseccao(4.5, 5, pow(10, -3)));

    return 0;
}