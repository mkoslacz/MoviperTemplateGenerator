<#if applicationPackage??>
package ${viperPackage}.interactor;
</#if>
<#if applicationPackage??>
import ${viperPackage}.contract.${prefix}Contract;
</#if>

public class ${prefix}Interactor
        extends BaseRxInteractor
        implements ${prefix}Contract.Interactor {

}
