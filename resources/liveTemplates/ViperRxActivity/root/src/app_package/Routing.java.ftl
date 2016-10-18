<#if applicationPackage??>
package ${viperPackage}.routing;
</#if>

import android.support.annotation.NonNull;
import android.app.Activity;

import com.mateuszkoslacz.moviper.base.routing.ActivityBaseRxRouting;
<#if applicationPackage??>
import ${viperPackage}.contract.${prefix}Contract;
</#if>

public class ${prefix}Routing
        extends ActivityBaseRxRouting
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Activity activity) {
        super(activity);
    }
}
