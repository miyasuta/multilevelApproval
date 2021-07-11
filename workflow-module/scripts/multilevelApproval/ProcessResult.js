/*
context sent from UI
1. In the case of approval
{ 
    decision: "approve"
}
2. In the case of rejection
{
    decision: "reject",
    reworkProcessor: {
        id: "xxx@com",
        isRequester: true / false
    }
}
*/

//check approval result
var isApproved = false;
if ($.context.decision === "approve" || $.usertasks.usertask1.last.decision === "approve") {
    isApproved = true;
}

//update context
$.context.decision = isApproved ? "approve" : "reject";
$.context.isApproved = isApproved;

//remove reworkProcessor
if (isApproved) {
    $.context.reworkProcessor = {};
}

//check if this is the final step
var stepLength = $.context.nextProcessor.index + 1;
if($.context.approvalSteps.length === stepLength && isApproved) {
    $.context.isComplete = true;
    $.context.finalDecision = $.context.decision;
}
