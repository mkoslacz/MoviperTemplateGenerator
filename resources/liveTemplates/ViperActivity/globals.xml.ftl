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
        value="<#if className?contains("Activity")>${className?replace("Activity", "")}<#else>${className}</#if>" />
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
        id="passiveMode"
		type="boolean"
        value="<#if screenType?contains("Passive")>true<#else>false</#if>"/>

    <global
		id="type"
		value="${screenType?replace("Passive", "")}" />

	<global
		id="screenBaseName"
		value="Viper<#if screenType?contains("Ai")><#if viewState>ViewState</#if>${screenType?replace("Passive", "")}<#if screenType?contains("Passive")>Passive</#if>Activity<#else>${screenType?replace("Passive", "")}<#if viewState>ViewState</#if><#if screenType?contains("Passive")>Passive</#if>Activity</#if>"/>
</globals>
