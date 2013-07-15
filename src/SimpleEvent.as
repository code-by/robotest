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

    public static const CLICK:String = "click";

    public function SimpleEvent(type:String) {
        super(type);
    }

}
}
