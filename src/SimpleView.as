/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 11:07
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Sprite;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.events.MouseEvent;

public class SimpleView extends Sprite {

    [Inject]
    var eventDispatcher:IEventDispatcher;

    public function SimpleView() {
        graphics.beginFill(0xFF0000, 1);
        graphics.drawRect(0, 0, 100, 100);
        addEventListener(MouseEvent.CLICK, onClick);

    }

    private function onClick(event:Event):void {
        trace('mouse click');
        eventDispatcher.dispatchEvent(new SimpleEvent(SimpleEvent.CLICK));
    }

}
}
