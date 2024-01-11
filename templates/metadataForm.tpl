{**
 * plugins/generic/funding/templates/metadataForm.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * The included template that is hooked into Templates::Submission::SubmissionMetadataForm::AdditionalMetadata.
 *}
 
{if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_SUB_EDITOR, ROLE_ID_ASSISTANT, ROLE_ID_AUTHOR), (array)$userRoles)}
<div id="fundref">
	{capture assign=funderGridUrl}{url router=$smarty.const.ROUTE_COMPONENT component="plugins.generic.funding.controllers.grid.FunderGridHandler" op="fetchGrid" submissionId=$submissionId escape=false}{/capture}
	{load_url_in_div id="funderGridContainer"|uniqid url=$funderGridUrl}
</div>
{/if}