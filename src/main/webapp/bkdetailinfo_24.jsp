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
				<td width="60%"><img class="ui fluid image" src="{{eachitem}}" /></td>
				<td width="40%"></td>
			</tr>
		</tbody>
	</table>
</div>