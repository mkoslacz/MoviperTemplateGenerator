package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>routing</#if>;

import android.app.Activity;
import com.mateuszkoslacz.moviper.base.routing.BaseRxRouting;
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
</#if>
<#if !packagesPerUseCase>public </#if>class ${prefix}Routing
        extends BaseRxRouting<Activity>
        implements ${prefix}Contract.Routing {

}
