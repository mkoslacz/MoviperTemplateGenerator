<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/AggregateItem.java.ftl"
             to="${viperOut}/view/adapter/agregate/${aggregateName}Item.java" />

    <instantiate from="root/res/layout/vh_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/viewholder_${prefix?lower_case}.xml" />

    <instantiate from="root/src/app_package/Interactor.java.ftl"
                   to="${viperOut}/interactor/${prefix}Interactor.java" />

   <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${viperOut}/presenter/${prefix}Presenter.java" />

   
<#if createEntity>
	<instantiate from="root/src/app_package/with_entity/Entity.java.ftl"
		               to="${viperOut}/entity/${prefix}.java" />

	<instantiate from="root/src/app_package/with_entity/PrefixedAggregateItem.java.ftl"
		               to="${viperOut}/view/adapter/agregate/${prefix}${aggregateName}Item.java" />

	<instantiate from="root/src/app_package/with_entity/ViewHolder.java.ftl"
		               to="${viperOut}/view/viewholder/${prefix}ViewHolder.java" />
<#else>
	<instantiate from="root/src/app_package/PrefixedAggregateItem.java.ftl"
		               to="${viperOut}/view/adapter/agregate/${prefix}${aggregateName}Item.java" />

	<instantiate from="root/src/app_package/ViewHolder.java.ftl"
		               to="${viperOut}/view/viewholder/${prefix}ViewHolder.java" />
</#if>

<#if createDelegate>
	<instantiate from="root/src/app_package/AdapterDelegate.java.ftl"
                 	to="${viperOut}/view/adapter/delegate/${prefix}AdapterDelegate.java" />
</#if>


<#if createViewHelper>    
	<instantiate from="root/src/app_package/ViewHelperContract.java.ftl"
				   	to="${viperOut}/contract/${prefix}Contract.java" />
    
    <instantiate from="root/src/app_package/ViewHelperRouting.java.ftl"
                   to="${viperOut}/routing/${prefix}Routing.java" />
<#else>
    <instantiate from="root/src/app_package/Contract.java.ftl"
                   to="${viperOut}/contract/${prefix}Contract.java" />

    <instantiate from="root/src/app_package/Routing.java.ftl"
                   to="${viperOut}/routing/${prefix}Routing.java" />
</#if>

    <open file="${viperOut}/contract/${prefix}Contract.java" /> 

</recipe>
