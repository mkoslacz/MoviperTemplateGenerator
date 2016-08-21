<#if applicationPackage??>
package ${viperPackage}.routing;
</#if>

import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;

import com.mateuszkoslacz.moviper.base.routing.FragmentBaseRouting;
<#if applicationPackage??>
import ${viperPackage}.contract.${prefix}Contract;
</#if>

public class ${prefix}Routing
        extends FragmentBaseRouting<
        ${prefix}Contract.PresenterForRouting>
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Fragment fragment) {
        super(fragment);
    }
}
