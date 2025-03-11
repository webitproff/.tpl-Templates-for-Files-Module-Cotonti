<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin">
  <div class="uk-alert-warning" uk-alert>
    <p>
      <span class="uk-text-bold uk-text-secondary">{PHP.usr.profile.user_name}</span>, you are using the template <code>files.filebox.tpl</code>
      <a href="https://abuyfile.com/forums/cotonti/original/mod-files" class="uk-text-bold">Help and support</a> for the <span class="uk-text-bold">"Files"</span> module.
    </p>
  </div>
</div>
<!-- ENDIF -->
<div class="row">
  <!-- The file upload form used as target for the file upload widget -->
  <div class="col-xs-12 file-upload" id="file-upload_{UPLOAD_SOURCE}_{UPLOAD_ITEM}_{UPLOAD_FIELD}" data-url="{UPLOAD_ACTION}" data-files-form-param="{UPLOAD_PARAM}" data-files-form-x="{UPLOAD_X}" data-files-source="{UPLOAD_SOURCE}" data-files-source-id="{UPLOAD_ITEM}" data-files-field="{UPLOAD_FIELD}">
    <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
    <div class="row fileupload-buttonbar">
      <div class="uk-card">
        <!-- The fileinput-button span is used to style the file input field as button -->
        <span class="uk-button uk-button-success fileinput-button">
          <i class="glyphicon glyphicon-plus"></i>
          <span>{PHP.L.files_add}...</span>
          <input type="file" name="files[]" <!-- IF {UPLOAD_LIMIT}> 0 -->multiple<!-- ENDIF -->>
        </span>
        <button type="submit" class="uk-button uk-button-primary start">
          <span>{PHP.L.files_start_upload}</span>
        </button>
        <button type="reset" class="uk-button uk-button-warning cancel">
          <span>{PHP.L.files_cancel}</span>
        </button>
        <button type="button" class="uk-button uk-button-danger delete">
          <span>{PHP.L.Delete}</span>
        </button>
        <input type="checkbox" class="toggle">
        <!-- The global file processing state -->
        <span class="fileupload-process"></span>
      </div>
      <div class="uk-card ">
        <div id="dropzone" class="dropzone fade well">
          <div class="uk-visible@s uk-background-muted uk-card-body uk-margin">
            <i class="fa-solid fa-cloud-arrow-up fa-2xl"></i> {PHP.L.files_draghere}
          </div>
          <!-- The global progress state -->
          <div class="fileupload-progress fade">
            <!-- The global progress bar -->
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
              <div class="progress-bar progress-bar-success" style="width:0%;"></div>
            </div>
            <!-- The extended global progress state -->
            <div class="progress-extended hidden-xs">&nbsp;</div>
          </div>
        </div>
      </div>
    </div>
    <!-- The table listing the files available for upload/download -->
    <table id="filesTable_" role="presentation" class="table uk-table uk-table-small uk-table-striped filesTable">
      <tbody class="files"></tbody>
    </table>
  </div>
</div>
<!-- END: MAIN -->
