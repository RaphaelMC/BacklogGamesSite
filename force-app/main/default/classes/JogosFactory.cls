public with sharing class JogosFactory {

    public List<JogosRegistrados__c> gerarObjetosJogos(List<JogosSchema.Jogos> jogosRequest) {
        List<JogosRegistrados__c> jogos = new List<JogosRegistrados__c>();

        for (JogosSchema.Jogos jogoRequest : jogosRequest) {

            JogosRegistrados__c jogo = new JogosRegistrados__c(
                NomeJogo__c = jogoRequest.nomeJogo
            
            );
            
            jogos.add(jogo);
        }
        
        return jogos;
    }
}