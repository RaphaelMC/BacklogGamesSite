public with sharing class Jogos {
    private JogosFactory factory = new JogosFactory();

    public void criarJogo(List<JogosSchema.Jogos> jogosRequest) {
        try{

            List<JogosRegistrados__c> novoJogo = this.factory.gerarObjetosJogos(jogosRequest);

            insert novoJogo;

        }catch (Exception ex){
            throw new JogosException('Erro na criação do jogo: ' + ex.getMessage());
        }
    }

    public class JogosException extends Exception {}
}