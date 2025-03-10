<!-- BEGIN: MAIN -->
<!-- BEGIN: FILES_ROW -->
<!-- IF {FILES_ROW_IMG} AND {FILES_ROW_NUM} == 1 -->
<div class="uk-inline uk-cover-container">
<canvas width="420" height="280"></canvas>
<img uk-cover src="{FILES_ROW_ID|cot_filesThumbnailUrl($this,400,300,'outbound')}" alt="{FILES_ROW_TITLE} - {FILES_ROW_NAME}" title="{FILES_ROW_TITLE} - {FILES_ROW_NAME}" />
</div>>
<!-- ENDIF -->
<!-- END: FILES_ROW -->
<!-- END: MAIN -->