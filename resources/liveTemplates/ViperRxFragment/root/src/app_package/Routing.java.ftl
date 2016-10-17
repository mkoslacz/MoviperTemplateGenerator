<#if applicationPackage??>
package ${viperPackage}.routing;
</#if>

import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;

import com.mateuszkoslacz.moviper.base.routing.FragmentBaseRxRouting;
<#if applicationPackage??>
import ${viperPackage}.contract.${prefix}Contract;
</#if>

public class ${prefix}Routing
        extends FragmentBaseRxRouting
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Fragment fragment) {
        super(fragment);
    }
}
