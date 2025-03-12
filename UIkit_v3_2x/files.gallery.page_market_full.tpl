<!-- BEGIN: MAIN -->
<div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slider="center: true">
    <ul class="uk-slider-items uk-grid uk-grid-match" uk-height-viewport="min-height: 420; offset-top: true; offset-bottom: 30" uk-lightbox>
	<!-- BEGIN: FILES_ROW -->
		<!-- IF {FILES_ROW_IMG} -->
		<li class="uk-width-1-1 uk-width-3-4@m">
			<div class="uk-cover-container">
			<canvas width="640" height="420"></canvas>
				<a href="{FILES_ROW_URL}" data-caption="{FILES_ROW_TITLE_OR_NAME} - {FILES_ROW_PATH}" alt="{FILES_ROW_TITLE_OR_NAME}">
				<img uk-cover src="{FILES_ROW|cot_filesThumbnailUrl($this,1153,523,'outbound')}" alt="{FILES_ROW_TITLE_OR_NAME}" title="{FILES_ROW_TITLE_OR_NAME} - {FILES_ROW_PATH}" />  
				</a>
				<div class="uk-position-small uk-position-bottom-center uk-panel"><span class="uk-icon-button uk-button-primary">{FILES_ROW_NUM} </span></div>
			</div>
		</li>
		<!-- ENDIF -->
	<!-- END: FILES_ROW -->
    </ul>
<div class="uk-visible@m">
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>
</div>
</div>
<!-- END: MAIN -->
