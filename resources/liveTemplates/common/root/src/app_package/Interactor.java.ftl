package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>interactor</#if>;

import com.mateuszkoslacz.moviper.base.interactor.BaseInteractor;
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
</#if>
<#if !packagesPerUseCase>public </#if>class ${prefix}Interactor
        extends BaseInteractor<${prefix}Contract.PresenterForInteractor>
        implements ${prefix}Contract.Interactor {

}
