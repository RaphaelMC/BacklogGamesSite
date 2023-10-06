global with sharing class JogoService {

    private Jogos jogo = new Jogos();

    global void criarJogo(JogosSchema.JogoRequest jogoRequest) {
        List<JogosSchema.Jogos> jogos = jogoRequest.jogoFields;
        
        this.jogo.criarJogo(jogos);
        
    }
}