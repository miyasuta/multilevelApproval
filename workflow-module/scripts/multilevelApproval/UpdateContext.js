//set current approval status to complete
var approvalSteps = $.context.approvalSteps;
var index = $.context.nextProcessor.index;
approvalSteps[index].isComplete = true;
approvalSteps[index].decision = $.context.decision;

//update the context
$.context.approvalSteps = approvalSteps;

//update the history
var history = {
    "id": approvalSteps[index].id,
    "taskType": approvalSteps[index].taskType,
    "decision": approvalSteps[index].decision,
    "comment": approvalSteps[index].comment,
    "completedAt": new Date()  
};
$.context.approvalHistory.push(history);
