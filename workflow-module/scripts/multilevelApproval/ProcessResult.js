//check approval result
var isApproved = false;
if ($.context.decision === "approve" || $.usertasks.usertask1.last.decision === "approve") {
    isApproved = true;
}

//set current approval status to complete
var approvalSteps = $.context.approvalSteps;
var index = $.context.nextApprover.index;
approvalSteps[index].isComplete = true;
approvalSteps[index].decision = isApproved ? "approve" : "reject";
$.context.approvalSteps = approvalSteps;

//check if this is the final step
if(approvalSteps.length === index + 1 || !isApproved) {
    $.context.isComplete = true;
    $.context.finalDecision = approvalSteps[index].decision;
}
