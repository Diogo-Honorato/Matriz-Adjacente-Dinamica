#include <stdio.h>
#include <stdlib.h>
#include "api/GraphLib.h"

int main()
{

    Grafo *G = NULL;

    G = iniciarGrafo(G);

    //Escolher tipo de conexao "ND"(Nao Direcionado), "D"(Direcionado)
    char *tipoConexao = "ND";
    char *caminhoArquivo = "testes/input.txt";

    G = lerArquivo(G, caminhoArquivo, tipoConexao);

    imprimirGrafo(G);


    liberarGrafo(G);
}