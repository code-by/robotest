/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 10:10
 * To change this template use File | Settings | File Templates.
 */
package {
import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

public class MainConfig implements IConfig {

    [Inject]
    public var injector:IInjector;

    [Inject]
    public var mediatorMap:IMediatorMap;

    public function configure():void {

        injector.map(SimpleModel).asSingleton();

        trace('configure mediator');
        mediatorMap.map(SimpleView).toMediator(SimpleMediator);
        mediatorMap.map(SimpleModel).toMediator(SimpleMediator);

    }

}
}
