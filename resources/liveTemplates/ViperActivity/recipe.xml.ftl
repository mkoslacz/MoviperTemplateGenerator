<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#if packagesPerUseCase>

        <instantiate from="root/res/layout/activity_layout.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/activity_${classToResource(className)}.xml" />

        <instantiate from="root/src/app_package/Activity.java.ftl"
                       to="${viperOut}/${classToResource(className)}/${prefix}Activity.java" />

        <instantiate from="../common/root/src/app_package/Interactor.java.ftl"
                       to="${viperOut}/${classToResource(className)}/${prefix}Interactor.java" />

        <instantiate from="../common/root/src/app_package/Presenter.java.ftl"
                       to="${viperOut}/${classToResource(className)}/${prefix}Presenter.java" />

        <#if viewState> 
            <instantiate from="../common/root/src/app_package/ViewState.java.ftl" 
                           to="${viperOut}/${classToResource(className)}/${prefix}ViewState.java" /> 
        </#if>

        <#if createViewHelper>    
            <instantiate from="../common/root/src/app_package/ViewHelperContract.java.ftl"
                           to="${viperOut}/${classToResource(className)}/${prefix}Contract.java" />

            <instantiate from="../common/root/src/app_package/ViewHelperRouting.java.ftl"
                           to="${viperOut}/${classToResource(className)}/${prefix}Routing.java" />
        <#else>
            <instantiate from="../common/root/src/app_package/Contract.java.ftl"
                           to="${viperOut}/${classToResource(className)}/${prefix}Contract.java" />

            <instantiate from="../common/root/src/app_package/Routing.java.ftl"
                           to="${viperOut}/${classToResource(className)}/${prefix}Routing.java" />
        </#if>

        <open file="${viperOut}/${classToResource(className)}/${prefix}Contract.java" /> 

    <#else>

        <instantiate from="root/res/layout/activity_layout.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/activity_${classToResource(className)}.xml" />

        <instantiate from="root/src/app_package/Activity.java.ftl"
                       to="${viperOut}/view/activity/${prefix}Activity.java" />

        <instantiate from="../common/root/src/app_package/Interactor.java.ftl"
                       to="${viperOut}/interactor/${prefix}Interactor.java" />

        <instantiate from="../common/root/src/app_package/Presenter.java.ftl"
                       to="${viperOut}/presenter/${prefix}Presenter.java" />

        <#if viewState> 
            <instantiate from="../common/root/src/app_package/ViewState.java.ftl" 
                           to="${viperOut}/view/viewstate/${prefix}ViewState.java" /> 
        </#if>

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

    </#if>

</recipe>
