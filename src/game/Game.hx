package src.game;
import src.Utils;

class Game {
    private var players:Array<Player> = [];
    private var deck:Array<Card> = [];

    public function new() {
        final some_cards = ["Agua", "Tierra", "Fuego", "Aire"];
        for(some_card in some_cards) {
            final card = new Card(some_card); 
            deck.push(card); 
        }
    }

    public function add_player(player:Player):Void {
        players.push(player);
        trace('¡Bienvenido al juego ${player.name}!');
    }

    public function loop():Void {
        trace("Buscando nuevas cartas...");
        for(player in players){
            final lucky = Utils.probability(0.25);
            if(!lucky) {
                trace('${player.name} no tuvo suerte encontrando cartas.');
                return;
            } 

            final random_card = deck[Math.floor(Math.random() * deck.length)]; 
            player.add_card(random_card);
            trace('¡${player.name} obtuvo una carta tipo ${random_card.name}!');
        }
    }
}