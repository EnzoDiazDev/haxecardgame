import src.game.Player;
import src.game.Game;
import src.game.Player;
import haxe.Timer;
import Sys;

class Main {
    static public function main() {
        trace("Starting...");
        final game:Game = new Game();

        final timer:Timer = new Timer(1000*60*5);
        
        trace("Ingresa tu nombre:");
        final first_player_name = Sys.stdin().readLine();
        
        final first_player:Player = new Player(first_player_name); 
        game.add_player(first_player);

        timer.run = game.loop;

    }
}