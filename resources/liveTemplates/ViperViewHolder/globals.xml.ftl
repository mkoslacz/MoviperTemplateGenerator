<?xml version="1.0"?>
<globals>
    <global
        id="resOut"
        value="${projectOut}/src/main/res/${slashedPackageName(packageName)}" />
    <global
        id="srcOut"
        value="${projectOut}/src/main/java/${slashedPackageName(packageName)}" />
    <global
        id="prefix"
        value="${className?replace("ViewHolder", "")}" />
    <global
        id="viperPackage"
        value="<#if applicationPackage??>${applicationPackage}<#else>${packageName}</#if>.viper" />
    <global
        id="appPackage"
        value="<#if applicationPackage??>${applicationPackage}<#else>${packageName}</#if>" />
    <global
        id="viperOut"
        value="${projectOut}/src/main/java/<#if applicationPackage??>${slashedPackageName(applicationPackage)}/<#else>${slashedPackageName(packageName)}/</#if>viper" />
	<global
		id="aggregateName"
		value="${customAggregateType?replace("Item", "")?replace(" ", "")?trim}"/>
    <global
        id="viewHolderCompontentsOut"
        value="${srcOut}/viewholder/${classToResource(className)}" />
    <global
        id="delegatesOut"
        value="${srcOut}/delegate" />
    <global
        id="aggregatesOut"
        value="${srcOut}/aggregate" />
    <global
        id="viewHolderCompontentsPackage"
        value="${packageName}.viewholder.${classToResource(className)}" />
    <global
        id="delegatesPackage"
        value="${packageName}.delegate" />
    <global
        id="aggregatesPackage"
        value="${packageName}.aggregate" />
</globals>
