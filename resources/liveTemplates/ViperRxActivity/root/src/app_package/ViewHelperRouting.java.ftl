<#if applicationPackage??>
package ${viperPackage}.routing;
</#if>

import android.support.annotation.NonNull;
import android.app.Activity;

import com.mateuszkoslacz.moviper.base.routing.ActivityBaseViewHelperRxRouting;
<#if applicationPackage??>
import ${applicationPackage}.viper.contract.${prefix}Contract;
</#if>

public class ${prefix}Routing
        extends ActivityBaseViewHelperRxRouting<
        ${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Activity activity) {
        super(activity);
    }
}
