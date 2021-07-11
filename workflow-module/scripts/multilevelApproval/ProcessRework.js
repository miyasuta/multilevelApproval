/*set approval steps
case 1. Rework processor is the requester
 Insert the current approver as next approver again
case 2. Rework processor is the previous approver
 Insert the priveious approver and the current approver as next approver again
*/

var reworkProcessor = $.context.reworkProcessor;
var approvalSteps = $.context.approvalSteps;
var index = $.context.nextProcessor.index; 

var insertSteps = []
insertSteps.push({
    "id": reworkProcessor.id, //previous approver
    "taskType": reworkProcessor.isRequester ? "REWORK_REQUESTER" : "REWORK_APPROVER",
    "isComplete": false,
    "decision": ""           
},{
    "id": approvalSteps[index].id, //current approver,
    "taskType": "APPROVAL",
    "isComplete": false,
    "decision": ""         
});

//insert steps into approval steps
//approvalSteps.splice.apply(approvalSteps, [index + 1, 0].concat(insertSteps));
approvalSteps.splice(index + 1, 0, insertSteps[0]);
approvalSteps.splice(index + 2, 0, insertSteps[1]);
$.context.approvalSteps = approvalSteps;
