<?xml version="1.0"?>
<recipe>
    <#if appCompat?has_content><dependency mavenUrl="com.android.support:appcompat-v7:+"/></#if>
    <#if !appCompat?has_content && hasViewPager?has_content><dependency mavenUrl="com.android.support:support-v13:+"/></#if>
    <#if !appCompat?has_content ><dependency mavenUrl="com.android.support:support-v4:+"/></#if>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
    <merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values-w820dp/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values-w820dp/dimens.xml" />

    <instantiate from="res/layout/simpleactivity.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <instantiate from="src/app_package/SimpleActivity.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />



    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
