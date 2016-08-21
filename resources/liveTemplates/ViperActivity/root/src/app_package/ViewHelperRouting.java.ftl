<#if applicationPackage??>
package ${viperPackage}.routing;
</#if>

import android.support.annotation.NonNull;
import android.app.Activity;

import com.mateuszkoslacz.moviper.base.routing.ActivityBaseViewHelperRouting;
<#if applicationPackage??>
import ${applicationPackage}.viper.contract.${prefix}Contract;
</#if>

public class ${prefix}Routing
        extends ActivityBaseViewHelperRouting<
        ${prefix}Contract.PresenterForRouting,
        ${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Activity activity) {
        super(activity);
    }
}
