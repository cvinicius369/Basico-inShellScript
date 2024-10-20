# Variaveis, entrada e saida de dados e condicionais
nome="Caio" # nao deve haver espaços entre o sinal de =

# entrada de dados
read -p "Digite uma idade: " idade
# saida de dados
echo "Sua idade é: $idade"

# condicional if e else
# tem que ter espaço entre os colchetes e as condições
# os operadores logicos sao || para OR, && para AND e ! para NOT
# comparadores numericos sao: -eq IGUAL A, -ne DIFERENTE DE
# -lt MENOR QUE, -le MENOR OU IGUAL A, -gt MAIOR QUE, -ge MAIOR OU IGUAL A

# Os comparadores de strings sap:
# = IGUAL A, != DIFERENTE DE, -z VERDADEIRO SE A STRING EH VAZIA
# -n VERDADEIRO SE A STRING NAO EH VAZIA

# comparadores de arquivos sao:
# -e VERDADEIRO SE O ARQUIVO EXISTE, -f VERDADEIRO SE O ARQUIVO É REGULAR
# -d VERDADEIRO SE É UM DIRETORIO, -r SE O ARQUIVO EH LEGIVEL
# -w SE O ARQUIVO É GRAVAVEL, -x SE EH EXECUTAVEL

# Exemplo:
if [ "$idade" -ge 18 ]; then
    echo "Voce paga a inteira"
elif [ "$idade" -gt 15 ] && [ "$idade" -lt 18 ]; then
    echo "Voce paga meia"
else
    echo "Entrada gratuita"
fi
# o fi finaliza a condicional

read -p "Digite um numero de 0 a 3: " opcaoFilme
# condicional switch case
# usa-se apenas o case e finaliza com esac
case $opcaoFilme in 
    1)
        echo "Filme 1"
        ;;
    2)
        echo "Filme 2"
        ;;
    3)
        echo "Filme 3"
        ;;
    *)
        echo "numero invalido ou filme nao existe"
        ;;
esac
