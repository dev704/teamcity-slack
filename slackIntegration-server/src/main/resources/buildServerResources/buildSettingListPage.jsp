<%@ include file="/include.jsp" %>

<c:if test="${fn:length(list) > 0 }">
    <table class="runnerFormTable">
        <colgroup>
            <col class="normal-column">
            <col class="normal-column">
            <col>
            <col class="normal-column">
        </colgroup>
        <tr>
            <th>Branch mask</th>
            <th>Channel</th>
            <th>Options</th>
            <th></th>
        </tr>
        <c:forEach items="${list}" var="item">
            <tr data-id="${item.key}">
                <td>${item.value.branchMask}</td>
                <td>${item.value.slackChannel}</td>
                <td>
                    <ul class="options-list">
                        <li><c:if test="${item.value.success}">Trigger when build is successful</c:if></li>
                        <li><c:if
                            test="${item.value.failureToSuccess}">Only trigger when build changes from Failure to Success</c:if></li>
                        <li><c:if test="${item.value.fail}">Trigger when build is failed</c:if></li>
                        <li><c:if
                            test="${item.value.successToFailure}">Only trigger when build changes from Success to Failure</c:if></li>
                        <li><c:if test="${item.value.canceled}">Trigger when build is canceled</c:if></li>
                    </ul>
                </td>
                <td>
                    <ul class="options-list">
                        <li><a href="#" class="js-edit">Edit</a></li>
                        <li><a href="#" class="js-delete">Remove</a></li>
                        <li><a href="#" class="js-try">Try it</a></li>
                    </ul>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<div class="saveButtonsBlock">
    <input value="Add" class="btn btn_primary add-button submitButton" name="addButton" type="submit">
</div>