package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>interactor</#if>;

import com.mateuszkoslacz.moviper.base.interactor.BaseRxInteractor;
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
</#if>
<#if !packagesPerUseCase>public </#if>class ${prefix}Interactor
        extends BaseRxInteractor
        implements ${prefix}Contract.Interactor {

}
