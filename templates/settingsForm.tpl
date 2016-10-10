{**
 * plugins/generic/piwik/settingsForm.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Piwik plugin settings
 *
 *}
<div id="piwikSettings">
<div id="description">{translate key="plugins.generic.piwik.manager.settings.description"}</div>

<div class="separator"></div>

<br />

<script>
	$(function() {ldelim}
		// Attach the form handler.
		$('#piwikSettingsForm').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	{rdelim});
</script>
<form class="pkp_form" id="piwikSettingsForm" method="post" action="{url router=$smarty.const.ROUTE_COMPONENT op="manage" category="generic" plugin=$pluginName verb="settings" save=true}">
	{csrf}
	{include file="controllers/notification/inPlaceNotification.tpl" notificationId="piwikSettingsFormNotification"}

	{fbvFormArea id="piwikSettingsFormArea"}
		{fbvElement type="text" name="piwikUrl" value=$piwikUrl label="plugins.generic.piwik.manager.settings.piwikUrl"}
		{fbvElement type="text" name="piwikSiteId" value=$piwikSiteId label="plugins.generic.piwik.manager.settings.piwikSiteId"}
	{/fbvFormArea}

	{fbvFormButtons}
</form>

<p><span class="formRequired">{translate key="common.requiredField"}</span></p>
</div>