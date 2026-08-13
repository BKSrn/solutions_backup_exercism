typedef Item = ({int weight, int value});

class Knapsack {
  int maxWeight;
  Knapsack({required this.maxWeight});
  
  int maxValue(List<Item> items) {
    // lista com tamanho do atributo + 1, com valores iniciais == 0;
    final List<int> dp = new List.filled(this.maxWeight + 1, 0);
    
    for (final item in items) {
      // Para cada item da lista de parametros, percorremos as capacidades de trás para frente 
      for (int w = this.maxWeight; w >= item.weight; w--) {
        // Calculamos qual é a melhor opção:
        // 1. Manter o valor que já estava guardado para essa capacidade (excluir o item)
        // 2. Usar o valor do item atual somado ao que era possível obter com o peso restante (incluir o item)
        int exclude = dp[w];
        int include = item.value + dp[w - item.weight];

        if (include > exclude) {
          dp[w] = include;
        }
        
      }
    }

    // O último elemento da lista contém o valor máximo para a capacidade total;
    return dp[this.maxWeight];
    
    //for (int i = 0; i < items.lenght; i++) {
      //for (int j = i + 1; j < items.lenght; j++) {
        //items[i].weight == items[j].weight ? likeItems.add(items[i]) : continue;
      //}
    //}
    
  }
  
}
