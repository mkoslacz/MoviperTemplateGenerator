package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>routing</#if>;

import android.app.Activity;
import com.mateuszkoslacz.moviper.base.routing.BaseViewHelperRxRouting;
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
</#if>
<#if !packagesPerUseCase>public </#if>class ${prefix}Routing
        extends BaseViewHelperRxRouting<Activity, ${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {


}
