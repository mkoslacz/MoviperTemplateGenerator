<#if applicationPackage??>
package ${viperPackage}.interactor;
</#if>
import com.mateuszkoslacz.moviper.base.interactor.BaseInteractor;
<#if applicationPackage??>
import ${viperPackage}.contract.${prefix}Contract;
</#if>

public class ${prefix}Interactor
        extends BaseInteractor<${prefix}Contract.PresenterForInteractor>
        implements ${prefix}Contract.Interactor {

}
