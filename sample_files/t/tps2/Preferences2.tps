<?xml version='1.0'?>
<workbook>
  <preferences>

    <!-- Undocumented, not supported by anyone at Tableau, ever. -->
    <! -- As of Oct, 2016 many of these no longer work. Look for -->
    <! -- Equivalents in "everything.tps", also in this repo -->

    <!-- Change color worksheet background -->
    <preference name='ui.worksheet.background.color' value='#0ff5ec' />

    <!-- Change color of dimension pills -->
	<preference name='ui.shelf.dimension.background.color' value='#ef088d' />
	<preference name='ui.shelf.dimension.selected.background.color' value='#ef088d' />
    <preference name='ui.shelf.dimension.highlighted.background.color' value='#ef088d' />
	<preference name='ui.shelf.dimension.selected.border.color' value='#ef088d' />
	<preference name='ui.shelf.dimension.highlighted.border.color' value='#ef088d' />

    <!-- Change color of measure pills>
    <preference name='ui.shelf.measure.background.color' value='#f0c01f' />
	<preference name='ui.shelf.measure.selected.background.color' value='#f0c01f' />
    <preference name='ui.shelf.measure.highlighted.background.color' value='#f0c01f' />
    <preference name='ui.shelf.measure.selected.border.color' value='#f0c01f' />
    <preference name='ui.shelf.measure.highlighted.border.color' value='#f0c01f' />

    <!-- Dumb Stuff -->

    <preference name='mark.size' value='10' />  <!-- change default size of marks. Default = 5 -->
    <preference name='sets.in.out.default.out.color' value='#5A97BF' /> <!-- change "out" color for Sets -->
    <preference name='connectionui.base.background.color' value='#e60b0b' /> <!-- Color of connection (data) UI -->
    <preference name='connectionui.datagrid.background.color' value='#3e0be6' /> <!-- Color of connection data grid -->
    <preference name='joinarea.backgroundcolor' value='#ef088d' />     <!-- Color of upper table joining UI -->
    <preference name='ui.sidepane.background.light.color' value='#4eea1f' /> <!-- Data Pane header color -->
    <preference name='ui.sidepane.background.dark.color' value='#840aeb' />  <!-- Hard to explain, just try it -->

    <!-- Things you might find useful -->

    <preference name='ui.discoverpane.show' value='1' /> <!-- Show Discover pane on right-side. 0 = Off -->
    <preference name='ui.openpane.samples.defaultOn' value='1' /> <!-- Show Samples pane on bottom. 0 = Off -->
    <preference name='ui.member.list.max' value='5' /> <!-- Show more members in list of title values. Default = 3 -->
    <!-- Change timeout values for publishing a large workbook or downloading something big from Server -->
    <preference name='connection.send.timeout' value='1800000' /> <!~- 1.8M ms = 30 minutes -->
    <preference name='connection.receive.timeout' value='1800000' />






  </preferences>
</workbook>
