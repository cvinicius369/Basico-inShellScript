# FUNÇOES E CLASSES
nome_funcao(){
    echo "Minha primeira funcao em sh"
}

# chamando minha_funcao() sem parametros
minha_funcao

mensagem(){
    echo "Mensagem: $1" # para se referir a valores, basta usar o indice deles
    # nesse caso o indice começa em 1
}
mensagem "Ola mundo" # foi chamada a funcao com uma string como parametro

verificaSoma(){
    # variaveis locais sao definidas colocando um "local" antes delas
    local resultado=$1+$2 # so chamar a funcao terá de ter 2 valores
    echo "A soma de $1 e $2 é $local"
}
verificaSoma 2 5  # com isso sera impressa a soma dos dois numeros


# CLASSES 
# shellscript nao possui classes mas podem ser simuladas usando as funcoes
# Definindo uma "classe" Pessoa
Pessoa() {
    local nome="$1"
    local idade="$2"
    # Método para apresentar a pessoa
    apresentar() {
        echo "Nome: $nome, Idade: $idade"
    }
    # Método para alterar a idade
    alterar_idade() {
        idade="$1"
    }
    # Expondo os métodos
    echo "Métodos disponíveis: apresentar, alterar_idade"
}
# Criando um objeto da "classe" Pessoa
pessoa1=$(Pessoa "Vinicius" 25)
# Chamando os métodos
presentar() {
    eval "$pessoa1 apresentar"
}
alterar_idade() {
    eval "$pessoa1 alterar_idade $1"
}
# Usando os métodos
presentar
alterar_idade 30
presentar
