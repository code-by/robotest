/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 18:43
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.events.Event;

import robotlegs.bender.bundles.mvcs.Mediator;

public class SimpleMediator extends Mediator {

    override public function initialize():void {
        trace('initialize mediator');
        addViewListener(SimpleEvent.CLICK, myClick, SimpleEvent);
    }

    private function myClick(event:SimpleEvent):void {
        trace('myClick');
        dispatch(event);
    }

}
}
