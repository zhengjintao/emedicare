<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.cellheader {
		background-color: #c4e8fc
	}
</style>
<div class="ui bottom attached tab segment" data-tab="dtl24">	
	<h1 class="ui top header" style="margin-top: 11px; text-align: center">图片详情</h1>
	<table class="ui unstackable celled structured table">
		<tbody>
			<tr ng-repeat="eachitem in list.dt_25">
				<td><img src="{{eachitem}}" height="400" width="400" /></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>