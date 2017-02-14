package <#if !packagesPerUseCase>${viperPackage}.interactor<#else>${viewHolderCompontentsPackage}</#if>;

import com.mateuszkoslacz.moviper.base.interactor.BaseRxInteractor;
<#if !packagesPerUseCase>
import ${viperPackage}.contract.${prefix}Contract;
</#if>
<#if !packagesPerUseCase>public </#if>class ${prefix}Interactor
        extends BaseRxInteractor
        implements ${prefix}Contract.Interactor {

}

