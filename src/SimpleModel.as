/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 16.07.13
 * Time: 0:16
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

public class SimpleModel extends EventDispatcher {

    private var _x:int;
    private var _y:int;

    public function get x():uint {
        return _x;
    }

    public function set x(value:uint):void {
        _x = value;
        trace('model new x:'+value);
        //var simpleEvent = new SimpleEvent(SimpleEvent.MOVING);
        //simpleEvent.y = y;
        //simpleEvent.x = x;
        //dispatchEvent(simpleEvent);
    }

    public function get y():uint {
        return _y;
    }

    public function set y(value:uint):void {
        _y = value;
        trace('model new y:'+value);
        var simpleEvent = new SimpleEvent(SimpleEvent.MOVING);
        simpleEvent.y = y;
        simpleEvent.x = x;
        dispatchEvent(simpleEvent);
    }

}
}
