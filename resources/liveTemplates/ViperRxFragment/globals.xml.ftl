<?xml version="1.0"?>
<globals>
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="prefix" value="${classToResource(className)?capitalize}" />
    <global id="viperPackage" value="${applicationPackage}.viper" />
<global id="viperOut" value="app/src/main/java/${slashedPackageName(applicationPackage)}/viper" />
</globals>
