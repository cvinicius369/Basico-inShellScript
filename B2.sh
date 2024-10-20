# Lacos de repeticao

# FOR 
# o for possui alguns metodos de uso como por exemplo 
for fruta in "Maça" "Banana" "Abacaxi"
do 
    echo "Fruta: $fruta"
done

# mas tambem pode ser usada a sintaxe do c
for ((i=1; i<10; i++))
do 
    echo "Numero: $i"
done

# e tambem tem usando seq para numeros
for numero in $(seq 1 10)
do 
    echo "$numero"
done

# por ultimo tem para arquivos
for arquivo in *.txt
do
    echo "Arquivo encontrado: $arquivo"
done


# WHILE
# a funcao while eh semelhante ao for abaixo eh o exemplo simples
contador=1
while [ $contador -le 5 ]
do
    echo "Número: $contador"
    contador=$((contador + 1))  # Incrementa o contador
done

# exemplo com entrada de usuario
saida=1
while [ $saida -ne 0 ]
do
    echo "Digite um número (0 para sair):"
    read numero
    echo "Você digitou: $saida"
done

# exemplo com leitura de arquivos
while IFS= read -r linha
do
    echo "Linha: $linha"
done < exemplo.txt

# exemplo com contagem
contador=5
while [ $contador -gt 0 ]
do
    echo "Contagem: $contador"
    contador=$((contador - 1))  # Decrementa o contador
done
echo "Fogo!"