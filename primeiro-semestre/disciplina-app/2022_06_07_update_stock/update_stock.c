/**
 * @file update_stock.c
 * @author Izael Silva (https://github.com/Ias4g)
 * @brief
 * @version 0.1
 * @date 2022-06-07
 *
 * @copyright Copyright (c) 2022
 *
 * Fazer um programa em c
 * para cadastrar 5 produtos
 * e atualizar o estoque.
 */

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <conio.h>

int main()
{
    system("cls");
    system("color A");
    setlocale(LC_ALL, "Portuguese");

    int i;
    int stock[5][2];
    char product[5][100];
    // Estoque com 2 colunas [0] ataul e [1] minimo

    printf("\n\n");
    printf("Cadastre o nome do produto: \n");
    for (i = 0; i < 5; i++)
    {
        printf("Produto: ");
        setbuf(stdin, NULL); // limpa o buffer do teclado
        fgets(product[i], 100, stdin);

        printf("Estoque atual: ");
        scanf("%d", &stock[i][0]);

        printf("Estoque minimo: ");
        scanf("%d", &stock[i][1]);
    }

    system("pause");
    return 0;
}