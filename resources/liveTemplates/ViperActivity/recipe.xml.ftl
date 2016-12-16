<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <instantiate from="root/res/layout/activity_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/activity_${classToResource(className)}.xml" />

    <instantiate from="root/src/app_package/Activity.java.ftl"
                   to="${viperOut}/view/activity/${prefix}Activity.java" />

    <instantiate from="../common/root/src/app_package/Interactor.java.ftl"
                   to="${viperOut}/interactor/${prefix}Interactor.java" />

   <instantiate from="../common/root/src/app_package/Presenter.java.ftl"
                   to="${viperOut}/presenter/${prefix}Presenter.java" />

<#if createViewHelper>    
    <instantiate from="../common/root/src/app_package/ViewHelperContract.java.ftl"
                   to="${viperOut}/contract/${prefix}Contract.java" />

    <instantiate from="../common/root/src/app_package/ViewHelperRouting.java.ftl"
                   to="${viperOut}/routing/${prefix}Routing.java" />
<#else>
    <instantiate from="../common/root/src/app_package/Contract.java.ftl"
                   to="${viperOut}/contract/${prefix}Contract.java" />

    <instantiate from="../common/root/src/app_package/Routing.java.ftl"
                   to="${viperOut}/routing/${prefix}Routing.java" />
</#if>

    <open file="${viperOut}/contract/${prefix}Contract.java" /> 

</recipe>
