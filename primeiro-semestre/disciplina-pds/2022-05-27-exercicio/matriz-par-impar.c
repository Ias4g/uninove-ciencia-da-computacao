/**
 * @file matriz-par-impar.c
 * @author Izael Silva (https://github.com/Ias4g)
 * @brief
 * @version 0.1
 * @date 2022-05-27
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <locale.h>

#define MATRIZ_L 3
#define MATRIZ_C 2

int main()
{
    system("color E");
    setlocale(LC_ALL, "Portuguese");

    int i;
    int j;
    float mat[MATRIZ_L][MATRIZ_C];

    printf("Matriz de numeros reais\n");
    printf("-------------------------------------");

    for (i = 0; i < MATRIZ_L; i++)
    {
        for (j = 0; j < MATRIZ_C; j++)
        {
            printf("[%f][%f]= ", i, j);
            scanf("%F", &mat[i][j]);
        }
    }

    printf("\n");

    for (i = 0; i < MATRIZ_L; i++)
    {
        for (j = 0; j < MATRIZ_C; j++)
        {
            printf("%5.1f", mat[i][j]);
        }

        printf("\n");
    }

    return 0;
}