package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>routing</#if>;

import android.app.Activity;
import com.mateuszkoslacz.moviper.base.routing.BaseViewHelperRouting;
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;</#if>

<#if !packagesPerUseCase>public </#if>class ${prefix}Routing
        extends BaseViewHelperRouting
        <Activity,
        		${prefix}Contract.PresenterForRouting,
        		${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {

}
