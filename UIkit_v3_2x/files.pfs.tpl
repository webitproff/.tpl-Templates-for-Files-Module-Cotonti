<!-- BEGIN: MAIN -->
<!-- BEGIN: STANDALONE_HEADER -->
<!DOCTYPE html>
<html lang="{PHP.usr.lang}">
  <head>
    <title>{PHP.out.subtitle} - {PHP.cfg.maintitle}</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <base href="{PHP.cfg.mainurl}/" /> 
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
    <div class="uk-section uk-background-primary">
      <div class="uk-container uk-padding-small uk-padding-large-bottom">
        <div class="standalone">
          <!-- END: STANDALONE_HEADER -->
          <div class="uk-card uk-card-default uk-card-body uk-card-small uk-border-rounded uk-margin-bottom">
            <ul class="uk-breadcrumb"> {BREADCRUMBS} </ul>
          </div>
          <h1 class="uk-heading-small uk-margin-medium-bottom">{PAGE_TITLE}</h1> 
		  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
          <!-- IF {FOLDER_DESC} -->
          <div class="uk-margin">{FOLDER_DESC}</div>
          <!-- ENDIF -->
          <!-- BEGIN:FOLDERS -->
          <div class="uk-margin">
            <strong>{FOLDERS_COUNT}</strong>
            <!-- IF {FOLDERS_COUNT_RAW} > 0 --> / {FOLDERS_FILES_COUNT} <em>({PHP.L.files_onpage}: {FOLDERS_ONPAGE_COUNT} / {FOLDERS_ONPAGE_FILES_COUNT})</em>
            <!-- ENDIF -->
          </div>
          <div class="uk-text-right uk-margin">
            <button class="uk-button uk-button-primary" uk-toggle="target: #dlgNewFolder">
              <span uk-icon="icon: folder" class="uk-margin-small-right"></span>{PHP.L.files_newfolder} </button>
          </div>
          <!-- IF {FOLDERS_COUNT_RAW} > 0 -->
          <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded uk-margin-medium-bottom">
            <div class="uk-overflow-auto">
              <table class="uk-table uk-table-divider uk-table-middle">
                <thead>
                  <tr>
                    <th class="uk-width-small uk-text-center"></th>
                    <th>{PHP.L.Folder} / {PHP.L.Gallery}</th>
                    <th class="uk-text-center">{PHP.L.Public}</th>
                    <th class="uk-text-center">{PHP.L.Files}</th>
                    <th class="uk-text-center">{PHP.L.Size}</th>
                    <th class="uk-text-center">{PHP.L.Updated}</th>
                    <th class="uk-text-center">{PHP.L.Action}</th>
                  </tr>
                </thead>
                <tbody>
                  <!-- BEGIN: ROW -->
                  <tr>
                    <td class="uk-text-center">
                      <a href="{FOLDER_ROW_PFS_URL}">{FOLDER_ROW_ICON}</a>
                    </td>
                    <td>
                      <p class="uk-margin-remove uk-text-bold">
                        <a href="{FOLDER_ROW_PFS_URL}">{FOLDER_ROW_TITLE}</a>
                      </p>
                      <p class="uk-margin-remove uk-text-small">{FOLDER_ROW_DESC}</p>
                      <p class="uk-margin-remove uk-text-small uk-text-italic uk-text-right">
                        <em>{PHP.L.files_pastecode}:</em>
                        <strong>[pfs_gallery?f={FOLDER_ROW_ID}]</strong>
                      </p>
                    </td>
                    <td class="uk-text-center">{FOLDER_ROW_PUBLIC}</td>
                    <td class="uk-text-center">{FOLDER_ROW_ITEMS_COUNT}</td>
                    <td class="uk-text-center">{FOLDER_ROW_ITEMS_SIZE}</td>
                    <td class="uk-text-center">{FOLDER_ROW_UPDATE_DATE}</td>
                    <td class="uk-text-center" style="white-space: nowrap">
                      <div class="uk-grid-small" uk-grid>
                        <div>
                          <a href="{FOLDER_ROW_EDIT_URL}" class="uk-button uk-button-default uk-button-small" uk-tooltip="title: {PHP.L.Edit}">
                            <span uk-icon="icon: pencil"></span>
                          </a>
                        </div>
                        <!-- IF {PFS_IS_STANDALONE} -->
                        <div>
                          <a href="javascript:addgallery('{FOLDER_ROW_ID}')" class="uk-button uk-button-default uk-button-small" uk-tooltip="title: {PHP.L.files_pastegallery}">
                            <span uk-icon="icon: image"></span>
                          </a>
                        </div>
                        <!-- ENDIF -->
                        <div>
                          <a href="{FOLDER_ROW_DELETE_URL}" class="uk-button uk-button-danger uk-button-small confirmLink" uk-tooltip="title: {PHP.L.Delete}">
                            <span uk-icon="icon: trash"></span>
                          </a>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <!-- END: ROW -->
                </tbody>
              </table>
            </div>
          </div>
          <!-- ENDIF -->
          <!-- IF {FOLDERS_PAGINATION} -->
          <ul class="uk-pagination uk-flex-right uk-margin"> {FOLDERS_PAGEPREV} {FOLDERS_PAGINATION} {FOLDERS_PAGENEXT} </ul>
          <!-- ENDIF -->
          <!-- END: FOLDERS -->
          <!-- IF {IS_SITE_FILE_SPACE} == 0 -->
          <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded uk-margin-medium-bottom">
            <p>{PHP.L.files_totalsize}: {PFS_TOTALSIZE} {PHP.L.Of} {PFS_MAXTOTAL} ({PFS_PERCENTAGE}%)</p>
            <div class="uk-progress">
              <div class="uk-progress-bar {PFS_PROGRESSBAR_CLASS}" style="width: {PFS_PERCENTAGE}%;" role="progressbar" aria-valuenow="{PFS_PERCENTAGE}" aria-valuemin="0" aria-valuemax="100"> {PFS_PERCENTAGE}% </div>
            </div>
            <p class="uk-margin-top">{PHP.L.files_maxsize}: {PFS_MAXFILESIZE}</p>
          </div>
          <!-- ENDIF -->
          <!-- IF {FOLDER_EDIT_URL} -->
          <div class="uk-text-right uk-margin">
            <a href="{FOLDER_EDIT_URL}" class="uk-button uk-button-primary">
              <span uk-icon="icon: pencil" class="uk-margin-small-right"></span>{PHP.L.Edit} </a>
          </div>
          <!-- ENDIF -->
          <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded uk-margin-medium-bottom">
            <div class="uk-margin">
              <strong>{PFS_FILES_COUNT}</strong>
              <!-- IF {PFS_IS_ROOT} -->{PHP.L.files_intheroot}
              <!-- ELSE -->{PHP.L.files_inthisfolder}
              <!-- ENDIF -->
            </div>
            <div class="uk-grid" uk-grid>
              <div class="uk-width-1-1">{FILES_WIDGET}</div>
            </div>
          </div>
          <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded uk-margin-medium-bottom">
            <h4 class="uk-card-title">{PHP.L.files_extallowed}:</h4>
            <div class="uk-grid-small" uk-grid>
              <!-- BEGIN: ALLOWED_ROW -->
              <div>
                <span class="uk-label">{ALLOWED_ROW_EXT}</span>
              </div>
              <!-- END: ALLOWED_ROW -->
            </div>
          </div>
          <!-- BEGIN: FOLDER_NEWFORM -->
          <div id="dlgNewFolder" class="uk-modal" uk-modal>
            <div class="uk-modal-dialog">
              <button class="uk-modal-close-default" type="button" uk-close></button>
              <div class="uk-modal-header">
                <h4 class="uk-modal-title">{PHP.L.files_newfolder}</h4>
              </div>
              <form name="login" id="dlgNewFolderForm" action="{FOLDER_ADDFORM_URL}" method="post"> 
				{FOLDER_ADDFORM_HIDDEN} 
				<div class="uk-modal-body">
                  <div class="uk-margin">
                    <label class="uk-form-label">{PHP.L.Title}:</label> {FOLDER_ADDFORM_TITLE}
                  </div>
                  <div class="uk-margin">
                    <label class="uk-form-label">{PHP.L.Description}:</label> {FOLDER_ADDFORM_DESC}
                  </div>
                  <div class="uk-margin">{FOLDER_ADDFORM_ALBUM}</div>
                  <div class="uk-margin">{FOLDER_ADDFORM_PUBLIC}</div>
                </div>
                <div class="uk-modal-footer uk-text-center">
                  <button type="submit" class="uk-button uk-button-primary">
                    <span uk-icon="icon: check" class="uk-margin-small-right"></span>{PHP.L.Submit} </button>
                  <button type="button" class="uk-button uk-button-default uk-modal-close">
                    <span uk-icon="icon: close" class="uk-margin-small-right"></span>{PHP.L.Cancel} </button>
                </div>
              </form>
            </div>
          </div>
          <!-- END: FOLDER_NEWFORM -->
          <!-- BEGIN: STANDALONE_FOOTER -->
          <div class="uk-margin">
            <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded uk-margin-medium-bottom">
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
            <span class="uk-text-bold uk-text-secondary">{PHP.usr.profile.user_name}</span>, you are using the template <code>files.pfs.tpl</code>
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
