@RestResource(urlMapping='/jogo/*')
global class JogoRest {
    private static JogoService service = new JogoService();

    @HttpPost
    global static RestSchema.RestMessageResponse criarJogo(JogosSchema.JogoRequest jogoRequest){
        RestSchema.RestMessageResponse response;

        try{
            service.criarJogo(jogoRequest);
            response = new RestSchema.RestMessageResponse('Jogo criado com sucesso!', RestSchema.RestStatus.OK);
        }
        catch(Exception e){
            response = new RestSchema.RestMessageResponse(e.getMessage(), RestSchema.RestStatus.ERROR);
        }

        return response;
    }
}