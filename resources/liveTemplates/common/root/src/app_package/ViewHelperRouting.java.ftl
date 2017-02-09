package ${viperPackage}.routing;

import android.app.Activity;
import com.mateuszkoslacz.moviper.base.routing.BaseViewHelperRouting;
import ${viperPackage}.contract.${prefix}Contract;

public class ${prefix}Routing
        extends BaseViewHelperRouting
        <Activity,
        		${prefix}Contract.PresenterForRouting,
        		${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {

}
