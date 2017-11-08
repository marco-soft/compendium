{**
 * templates/frontend/pages/aboutThisPublishingSystem.tpl
 *
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view details about the OJS software.
 *
 * @uses $currentJournal Journal The journal currently being viewed
 * @uses $appVersion string Current version of OJS
 * @uses $pubProcessFile string Path to image of OJS publishing process
 *}
{include file="frontend/components/header.tpl" pageTitle="about.aboutThisPublishingSystem"}

<div class="page page_about_publishing_system">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.aboutThisPublishingSystem"}

	<div class="page-header">
		<h1>OJS Editorial and Publishing Process</h1>
	</div>

	<p>
		{if $currentJournal}
			{translate key="about.aboutOJSJournal" ojsVersion=$appVersion}
		{else}
			{translate key="about.aboutOJSSite" ojsVersion=$appVersion}
		{/if}
	</p>

	<img src="{$baseUrl}/{$pubProcessFile}" alt="{translate key="about.aboutThisPublishingSystem.altText"}">

</div><!-- .page -->
{include file="frontend/components/footer.tpl"}