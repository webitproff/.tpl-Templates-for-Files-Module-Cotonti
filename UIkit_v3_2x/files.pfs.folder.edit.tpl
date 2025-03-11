<!-- BEGIN: MAIN -->
<!-- BEGIN: STANDALONE_HEADER -->
<!DOCTYPE html>
<html lang="{PHP.usr.lang}">
  <head>
    <title>{PHP.out.subtitle} - {PHP.cfg.maintitle}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="{PHP.cfg.mainurl}/"> 
	{PFS_HEAD} 
	<script type="text/javascript">
      //
      < ![CDATA[{
            PFS_HEADER_JAVASCRIPT
          }
          var formName = '{PFS_C1}';
          var inputName = '{PFS_C2}';
          //]]>
    </script>
  </head>
  <body>
    <div class="uk-section uk-background-muted uk-padding">
      <div class="uk-container ">
        <div class="standalone">
          <!-- END: STANDALONE_HEADER -->
		  <div class="uk-card uk-card-default uk-card-body uk-card-small uk-border-rounded uk-margin-bottom">
          <ul class="uk-breadcrumb"> {BREADCRUMBS} </ul>
		  </div>
          <h1 class="uk-heading-small uk-margin-medium-bottom">{PAGE_TITLE}</h1> 
		  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
          <!-- BEGIN: FORM -->
          <div class="uk-margin">
            <div class="uk-card uk-card-default uk-card-body">
              <form action="{FOLDER_FORM_URL}" enctype="multipart/form-data" method="post" name="groupform" class="uk-form-stacked"> 
				{FOLDER_FORM_HIDDEN} 
				<div class="uk-margin {PHP|cot_formGroupClass('ff_title')}">
                  <label class="uk-form-label">Название: <span class="uk-text-danger">*</span>
                  </label>
                  <div class="uk-form-controls">{FOLDER_FORM_TITLE}</div>
                </div>
                <div class="uk-margin {PHP|cot_formGroupClass('ff_desc')}">
                  <label class="uk-form-label">{PHP.L.Description}:</label>
                  <div class="uk-form-controls">{FOLDER_FORM_DESC}</div>
                </div>
                <div class="uk-margin">
                  <div class="uk-form-controls">
                    <label>{FOLDER_FORM_PUBLIC}</label>
                  </div>
                </div>
                <!-- IF {FOLDER_FORM_ALBUM} -->
                <div class="uk-margin">
                  <div class="uk-form-controls">
                    <label>{FOLDER_FORM_ALBUM}</label>
                  </div>
                </div>
                <!-- ENDIF -->
                <div class="uk-margin uk-text-right">
                  <button type="submit" class="uk-button uk-button-primary">
                    <span uk-icon="icon: check" class="uk-margin-small-right"></span>{PHP.L.Submit} </button>
                </div>
              </form>
            </div>
          </div>
          <!-- END: FORM -->
          <!-- IF {IS_SITE_FILE_SPACE} == 0 -->
          <div class="uk-card uk-card-default uk-card-body uk-margin">
            <p>{PHP.L.files_totalsize}: {PFS_TOTALSIZE} {PHP.L.Of} {PFS_MAXTOTAL} ({PFS_PERCENTAGE}%)</p>
            <div class="uk-progress">
              <div class="uk-progress-bar {PFS_PROGRESSBAR_CLASS}" style="width: {PFS_PERCENTAGE}%;" role="progressbar" aria-valuenow="{PFS_PERCENTAGE}" aria-valuemin="0" aria-valuemax="100"> {PFS_PERCENTAGE}% </div>
            </div>
            <p class="uk-margin-top">{PHP.L.files_maxsize}: {PFS_MAXFILESIZE}</p>
          </div>
          <!-- ENDIF -->
          <!-- IF {FILES_WIDGET} != '' -->
          <div class="uk-margin">
            <div class="uk-card uk-card-default uk-card-body">
              <div class="uk-margin">
                <strong>{PFS_FILES_COUNT}</strong> {PHP.L.files_inthisfolder}
              </div>
              <div class="uk-grid" uk-grid>
                <div class="uk-width-1-1">{FILES_WIDGET}</div>
              </div>
            </div>
          </div>
          <!-- ENDIF -->
          <div class="uk-card uk-card-default uk-card-body uk-margin">
            <h4 class="uk-card-title">{PHP.L.files_extallowed}:</h4>
            <div class="uk-grid-small" uk-grid>
              <!-- BEGIN: ALLOWED_ROW -->
              <div>
                <span class="uk-label">{ALLOWED_ROW_EXT}</span>
              </div>
              <!-- END: ALLOWED_ROW -->
            </div>
          </div>
          <!-- BEGIN: STANDALONE_FOOTER -->
          <div class="uk-margin">
            <div class="uk-card uk-card-default uk-card-body"> 
				<ul class="uk-list uk-list-divider">
					<li>{PHP.R.files_pfs_link_addthumb} {PHP.R.files_icon_pastethumb} {PHP.L.files_pastethumb}</li>
					<li>{PHP.R.files_pfs_link_addpix} {PHP.R.files_icon_pasteimage} {PHP.L.files_pasteimage} </li>
					<li>{PHP.R.files_pfs_link_addfile} {PHP.R.files_icon_pastefile} {PHP.L.files_pastefile}</li>
				</ul>		
				<div class="uk-alert-danger" uk-alert>
                <a href class="uk-alert-close" uk-close></a>
                <p>(требуется доработать)</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
      <div class="uk-container">
        <div class="uk-alert-warning" uk-alert>
          <p>
            <span class="uk-text-bold uk-text-secondary">{PHP.usr.profile.user_name}</span>, you are using the template <code>files.pfs.folder.edit.tpl</code>
            <a href="https://abuyfile.com/forums/cotonti/original/mod-files" class="uk-text-bold">Help and support</a> for the <span class="uk-text-bold">"Files"</span> module.
          </p>
        </div>
      </div>
      <!-- ENDIF -->
    </div> 
	{FOOTER_RC}
  </body>
</html>
<!-- END: STANDALONE_FOOTER -->
<!-- END: MAIN -->
