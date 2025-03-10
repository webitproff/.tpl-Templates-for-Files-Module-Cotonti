<!-- BEGIN: MAIN -->
<hr>
<div class="uk-child-width-1-5@l uk-child-width-1-3@m uk-child-width-1-2@s uk-grid-small uk-flex-center" uk-grid uk-lightbox>
    <!-- BEGIN: FILES_ROW -->

    <div>
        <!-- IF {FILES_ROW_IMG} -->
        <div class="uk-cover-container uk-border-rounded shadow-violtlight">
            <canvas width="180" height="180"></canvas>
            <a href="{FILES_ROW_URL}" data-caption="{FILES_ROW_TITLE}" alt="{FILES_ROW_TITLE}">
                <img uk-cover class="" src="{FILES_ROW|cot_filesThumbnailUrl($this,420,320,'inset')}" alt="{FILES_ROW_TITLE} - {FILES_ROW_NAME}" title="{FILES_ROW_NAME}" />
            </a>
        </div>

        <!-- ENDIF -->
    </div>
    <!-- END: FILES_ROW -->

</div>
<!-- END: MAIN -->