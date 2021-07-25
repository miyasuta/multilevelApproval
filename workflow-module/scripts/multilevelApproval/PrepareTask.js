// find next approver
var approvalSteps = $.context.approvalSteps;
var nextProcessorIndex;
for (var i = 0; i < approvalSteps.length; i++) {
    if (!approvalSteps[i].isComplete) {
        nextProcessorIndex = i;
        break;
    }
};

var nextProcessor = {
    userId: approvalSteps[nextProcessorIndex].userId,
    index: nextProcessorIndex
}

// check if this is rework and the processor is requester
var reworkProcessor = $.context.reworkProcessor
if (reworkProcessor.isRequester) {
    $.context.isRequester = true;
} else {
    $.context.isRequester = false;
}

// initialize context
$.context.nextProcessor = nextProcessor;
$.context.isApproved = false;
$.context.decision = "";