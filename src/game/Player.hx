package src.game;
import src.game.Card;


class Player {
    public var name:String; 
    public var id:Float;
    public var deck:Array<Card> = [];

    public function new(name) {
        this.name = name;
        this.id = generate_id();
    }

    static function generate_id():Float {
        return Math.random() * 100;
    }

    public function add_card(card:Card):Void {
        deck.push(card);
    }
}