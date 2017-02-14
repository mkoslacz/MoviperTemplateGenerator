package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>routing</#if>;

import android.app.Activity;
import com.mateuszkoslacz.moviper.base.routing.BaseRouting;
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
</#if>
<#if !packagesPerUseCase>public </#if>class ${prefix}Routing
        extends BaseRouting<Activity, ${prefix}Contract.PresenterForRouting>
        implements ${prefix}Contract.Routing {

}
