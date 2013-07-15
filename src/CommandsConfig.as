/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 21:22
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.SimpleButton;

import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

public class CommandsConfig implements IConfig {

    [Inject]
    public var commandMap:IEventCommandMap;

    public function configure():void {
        trace('configure command');
        commandMap.map(SimpleEvent.CLICK, SimpleEvent).toCommand(SimpleCommand);
    }
}
}
