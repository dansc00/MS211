#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double f(double x){

    return pow(x, 2) - 3356;
}

double f_linha(double x){

    return 2*x;
}

double bisseccao(double a, double b, double e){

    int k = 0;
    double xk = (a + b)/2;

    while(fabs(f(xk)) > e || fabs(b-a) > e){

        if(f(a) * f(xk) < 0)
            b = xk;
        else
            a = xk;

        
        xk = (a + b)/ 2;
        k++;
    }

    printf("BISSECÇÃO: Foram realizadas %d iterações\n", k);
    return xk;
}

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

    printf("NEWTON-RAPHSON: Foram realizadas %d iterações\n", k);
    return xk;
}

double secante(double x1, double x0, double e1, double e2){

    int k = 0;
    double x;
    double f0 = x1;
    double dr = e2 + 1;

    while(fabs(f0) > e1 || dr < e2){

        k++;
        x = (x0 * f(x1) - x1 * f(x0))/(x1 - x0);
        x0 = x1;
        x1 = x;
        dr = fabs(x - x0);
        f0 = f(x);
    }

    printf("SECANTE: Foram realizadas %d iterações\n", k);
    return x;
}

int main(){

    printf("Raiz de f pelo método da bissecção = %.16lf\n", bisseccao(56, 58, pow(10, -16)));
    printf("\n");
    printf("Raiz de f pelo método de Newton - Raphson = %.16lf\n", newton_raphson(56.5, pow(10, -16), pow(10, -16)));
    printf("\n");
    printf("Raiz de f pelo método da Secante = %.16lf\n", secante(56.5, 56.7, pow(10, -3), pow(10, -16)));
    return 0;
}