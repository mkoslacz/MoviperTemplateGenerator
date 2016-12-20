<?xml version="1.0"?>
<recipe>

    <instantiate from="root/res/layout/fragment_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(className)}.xml" />

    <instantiate from="root/src/app_package/Fragment.java.ftl"
                   to="${viperOut}/view/fragment/${prefix}Fragment.java" />

    <instantiate from="../common/root/src/app_package/rx/Interactor.java.ftl"
                   to="${viperOut}/interactor/${prefix}Interactor.java" />

   <instantiate from="../common/root/src/app_package/rx/Presenter.java.ftl"
                   to="${viperOut}/presenter/${prefix}Presenter.java" />

<#if viewState> 
  <instantiate from="../common/root/src/app_package/ViewState.java.ftl" 
                   to="${viperOut}/view/viewstate/${prefix}ViewState.java" /> 
</#if>

<#if createViewHelper>    
    <instantiate from="../common/root/src/app_package/rx/ViewHelperContract.java.ftl"
                   to="${viperOut}/contract/${prefix}Contract.java" />

    <instantiate from="../common/root/src/app_package/rx/ViewHelperRouting.java.ftl"
                   to="${viperOut}/routing/${prefix}Routing.java" />
<#else>
    <instantiate from="../common/root/src/app_package/rx/Contract.java.ftl"
                   to="${viperOut}/contract/${prefix}Contract.java" />

    <instantiate from="../common/root/src/app_package/rx/Routing.java.ftl"
                   to="${viperOut}/routing/${prefix}Routing.java" />
</#if>

    <open file="${viperOut}/contract/${prefix}Contract.java" /> 

</recipe>
