// find next approver
var approvalSteps = $.context.approvalSteps;
var nextApproverIndex;
for (var i = 0; i < approvalSteps.length; i++) {
    if (!approvalSteps[i].isComplete) {
        nextApproverIndex = i;
        break;
    }
};

var nextApprover = {
    id: approvalSteps[nextApproverIndex].id,
    index: nextApproverIndex
}
$.context.nextApprover = nextApprover;
$.context.isComplete = false;
$.context.decision = "";