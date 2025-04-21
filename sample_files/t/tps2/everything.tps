<?xml version='1.0'?>
<workbook>
  <preferences>

        <!--------------   USE AT YOUR OWN RISK!!!  ---------------->
        <!------ Not supported by Tableau or Tableau Support ------->
        <!-----These settings can (and have) change(d) at any time ---->


        <!-- In general, the orginal value for this setting is part of the comment next to it -->

				<!-- Global Settings  -->

                <preference name='unification.color.desktop-blue' value='#355C80' /> <!--f5f5f5 Small Header over "Connect" Flyout -->
                <preference name='unification.color.continuous' value='#4996b2' /> <!-- 00B180 Continuous Color -->
                <preference name='unification.color.continuous-translucent' value='#4996b28C' />  <!-- 00B1808C Discrete Color when dragged. Pick the color, then add 8C -->
                <preference name='unification.color.discrete' value='#00b180' /> <!-- 4996B2 Discrete Color  when dragged -->
                <preference name='unification.color.discrete-translucent' value='#00b1808C' /> <!-- 4996B28C Discrete Color when dragged -->
                <preference name='unification.color.text.dark-base' value='#000000' /> <!-- Most of the static text inside objects for Tableau -->
                <preference name='default.text.color' value='#ea09a3' /> <!-- 000000 These TWO settings seem to control the coloring of "dynamic" text w/in the UI -->
                <preference name='default.font.color' value='#ea09a3' />


				<!-- Color Legend  -->

                <preference name='legend.swatch.height' value='14' /> <!-- Changes the size of the color legend "square" for each category -->
                <preference name='legend.swatch.width' value='5' />  <!-- 14 -->


				<!-- Start Page -->

                <preference name='ui.startpage.background.color' value='#696969' /> <!--f8f8f8 Background color of start page-->
				        <preference name='ui.connectpane.background.color' value='#808080' />  <!--355C80 Color of the Connection list and flyout-->
				        <preference name='ui.connectpane.background.color.hover' value='#2A4966' />
				        <preference name='ui.connectpane.foreground.color' value='#FFFFFF' /> <!-- Connect pane text color -->
                <preference name='ui.connectpane.more.background.color' value='#808080' /> <!-- 3E6C96 Color of "More" data connections -->
                <preference name='ui.discoverpane.show' value='1' /> <!-- Show or hide the Discover pane on the right 0 = off -->
                <preference name='ui.openpane.samples.defaultOn' value='0' /> <!-- 1 = Turn the 3-viz 'Samples' area at the bottom of the start page off -->

        <!-- Connection UI -->
                <preference name='connectionui.datagrid.alternate.row.color' value='#2ae04b' /> <!-- F5F5F5 Alternating data grid row color -->
                <preference name='connectionui.datagrid.background.color' value='#ea09a3' /> <!-- FFFFFF  Lower Grid Pane-->
                <preference name='connectionui.datagrid.grid.color' value='#F0F0F0' />
                <preference name='connectionui.datagrid.grid.secondary.color' value='#2ae04b' /> <!-- E4E4E4 -->
                <preference name='connectionui.datagrid.header.border.color' value='#BCBEC0' />
                <preference name='connectionui.datagrid.header.highlight.color' value='#BFCCD4' /> <!-- BFCCD4 -->
                <preference name='connectionui.datagrid.header.secondary.highlight.color' value='#dced47' />  <!-- E1E7EB Highlight color on header when data grid column selected-->
                <preference name='connectionui.datagrid.highlight.color' value='#dced47' />  <!-- E1E7EB Highlight color on body of data grid column when selected-->
                <preference name='connectionui.datagrid.highlight.unfocused.color' value='#EAEDEF' />
				        <preference name='connectionui.metadatagrid.header.background.color' value='#dced47' /> <!-- F2F2F2 Header for the "metadata" (vs. Preview) view, also header of Join box -->
                <preference name='connectionui.textedit.background.color' value='#FFFFFF' /> <!-- FFFFFF Background Color of "Live / Extract" radio buttons -->

        <!--connection area-->
                  <preference name='joinarea.backgroundcolor' value='#dced47' /> <!-- FFFFFF Background color of upper Join area of connection dialog-->

        <!-- side pane -->
                  <preference name='ui.sidepane.text.disabled.alpha' value='0.3' /> <!-- how much to lighten the label color of the non-active tab of the sidepane -->



				<!-- Data Limits & Paging -->

                  <!-- Using ANY of these seems to BREAK Tableau's ability to "page" to the next resultset of X rows.

                  <preference name='datagrid.default.visible.rows' value='5' /> <!-- 1000 Rows to show when in Connection Data Grid -->
                  <!-- View underlying data-->
                  <preference name='vud.topn.datasource' value='10' /> <!-- 10000 Rows to show right-clicking a data source and choosing View Data -->
                  <preference name='vud.topn.underlying' value='15' /> <!-- 75000 Rows to show when Viewing Underlying data -->

          <!-- In/Out sets -->
                  <preference name='sets.in.out.default.out.color' value='#A2A2A2' />

    			<!-- Number of members to list before falling back to 'and n more' -->
                  <preference name='ui.member.list.max' value='3' />

          <!-- Change timeout values for publishing a large workbook or downloading something big from Server -->
                  <preference name='connection.send.timeout' value='1800000' /> <!~- 1.8M ms = 30 minutes -->
                  <preference name='connection.receive.timeout' value='1800000' />        

  </preferences>
</workbook>
