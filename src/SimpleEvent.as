/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 21:11
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.events.Event;

public class SimpleEvent extends Event {

    public static const CLICK:String = "simple_click";

    public var x:uint;
    public var y:uint;

    public function SimpleEvent(type:String) {
        super(type);
    }

    override public function clone():Event {
        var simpleEvent = new SimpleEvent(type);
        simpleEvent.x = x;
        simpleEvent.y = y;
        return simpleEvent;
    }
}
}
