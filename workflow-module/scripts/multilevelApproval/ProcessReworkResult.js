/*
context sent from UI
1. In the case of re-application
{ 
    decision: "apply"
}
2. In the case of cancelling workflow
{
    decision: "cancel"
}
*/

//check approval result
var isCancelled = false;
if ($.context.decision === "cancel" || $.usertasks.usertask1.last.decision === "cancel") {
    isCancelled = true;
}

//update context's decision
$.context.decision = isCancelled ? "cancel" : "apply";
$.context.isCancelled = isCancelled;

//remove reworkProcessor
$.context.reworkProcessor = {};
