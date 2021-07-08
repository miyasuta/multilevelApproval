{
	"contents": {
		"32ec83e1-af2a-41a3-b23e-8bde0a90d851": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "multilevelapproval",
			"subject": "multilevelApproval",
			"name": "multilevelApproval",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"a29ea060-1dba-4acb-8622-edaa8df33333": {
					"name": "Initialize"
				},
				"09cbe691-fa00-44e6-a651-b7a2d7d62e11": {
					"name": "ApprovalTask"
				},
				"66bbc31e-be2f-405c-80a2-c96183713d70": {
					"name": "ProcessResult"
				},
				"16bc1335-3267-4d89-b130-703309bc9e50": {
					"name": "Is Complete"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"5a2c470d-810e-4b48-bb3f-d06040989b22": {
					"name": "SequenceFlow2"
				},
				"8b3778ee-2e26-4448-93d5-4e7e3add995e": {
					"name": "SequenceFlow6"
				},
				"cffc350d-05a3-4bab-8728-72d0ba3b5935": {
					"name": "SequenceFlow7"
				},
				"9608ac1c-4bcb-4205-8481-ffa7ea11ecb3": {
					"name": "Complete"
				},
				"90f9aa3d-a433-4849-a687-9836842c429d": {
					"name": "Default"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"1755a56d-3622-43e7-8340-0e86948076d5": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"a29ea060-1dba-4acb-8622-edaa8df33333": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/multilevelApproval/Initialize.js",
			"id": "scripttask1",
			"name": "Initialize"
		},
		"09cbe691-fa00-44e6-a651-b7a2d7d62e11": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Multi Level Approval Test",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.nextApprover.id}",
			"formReference": "/forms/multilevelApproval/ApprovalTaskForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvaltaskform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "ApprovalTask"
		},
		"66bbc31e-be2f-405c-80a2-c96183713d70": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/multilevelApproval/ProcessResult.js",
			"id": "scripttask2",
			"name": "ProcessResult"
		},
		"16bc1335-3267-4d89-b130-703309bc9e50": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Is Complete",
			"default": "90f9aa3d-a433-4849-a687-9836842c429d"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "a29ea060-1dba-4acb-8622-edaa8df33333"
		},
		"5a2c470d-810e-4b48-bb3f-d06040989b22": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "a29ea060-1dba-4acb-8622-edaa8df33333",
			"targetRef": "09cbe691-fa00-44e6-a651-b7a2d7d62e11"
		},
		"8b3778ee-2e26-4448-93d5-4e7e3add995e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "09cbe691-fa00-44e6-a651-b7a2d7d62e11",
			"targetRef": "66bbc31e-be2f-405c-80a2-c96183713d70"
		},
		"cffc350d-05a3-4bab-8728-72d0ba3b5935": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "66bbc31e-be2f-405c-80a2-c96183713d70",
			"targetRef": "16bc1335-3267-4d89-b130-703309bc9e50"
		},
		"9608ac1c-4bcb-4205-8481-ffa7ea11ecb3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.isComplete == true}",
			"id": "sequenceflow8",
			"name": "Complete",
			"sourceRef": "16bc1335-3267-4d89-b130-703309bc9e50",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"90f9aa3d-a433-4849-a687-9836842c429d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "Default",
			"sourceRef": "16bc1335-3267-4d89-b130-703309bc9e50",
			"targetRef": "a29ea060-1dba-4acb-8622-edaa8df33333"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d": {},
				"b7e8a2a0-8379-4e24-90e5-2aa9ffa9f911": {},
				"edb7b679-2def-4ba0-8f4a-c0da2081ce8c": {},
				"d4cf7cd1-5825-431d-bd7d-7eff4a5fdb66": {},
				"5c973d0c-65af-433c-9407-555288e01afb": {},
				"d464b221-6e7e-4b74-8e13-a696bab91077": {},
				"26a96471-f008-4588-b424-c03436b774a5": {},
				"f26cb176-5a53-4188-9db8-ca33ef369acd": {},
				"fdf965b7-c2e0-49c6-af60-fab4b18b9d76": {}
			}
		},
		"1755a56d-3622-43e7-8340-0e86948076d5": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/multilevelApproval/sample.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 797,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "a29ea060-1dba-4acb-8622-edaa8df33333"
		},
		"b7e8a2a0-8379-4e24-90e5-2aa9ffa9f911": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,116.9375 394.37073643296924,116.9375",
			"sourceSymbol": "b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d",
			"targetSymbol": "edb7b679-2def-4ba0-8f4a-c0da2081ce8c",
			"object": "5a2c470d-810e-4b48-bb3f-d06040989b22"
		},
		"edb7b679-2def-4ba0-8f4a-c0da2081ce8c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 344.37073643296924,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "09cbe691-fa00-44e6-a651-b7a2d7d62e11"
		},
		"d4cf7cd1-5825-431d-bd7d-7eff4a5fdb66": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 494.37073643296924,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "66bbc31e-be2f-405c-80a2-c96183713d70"
		},
		"5c973d0c-65af-433c-9407-555288e01afb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "394.37073643296924,117.125 544.3707364329692,117.125",
			"sourceSymbol": "edb7b679-2def-4ba0-8f4a-c0da2081ce8c",
			"targetSymbol": "d4cf7cd1-5825-431d-bd7d-7eff4a5fdb66",
			"object": "8b3778ee-2e26-4448-93d5-4e7e3add995e"
		},
		"d464b221-6e7e-4b74-8e13-a696bab91077": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 640.8707364329692,
			"y": 96.125,
			"object": "16bc1335-3267-4d89-b130-703309bc9e50"
		},
		"26a96471-f008-4588-b424-c03436b774a5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "544.3707364329692,117.125 661.8707364329692,117.125",
			"sourceSymbol": "d4cf7cd1-5825-431d-bd7d-7eff4a5fdb66",
			"targetSymbol": "d464b221-6e7e-4b74-8e13-a696bab91077",
			"object": "cffc350d-05a3-4bab-8728-72d0ba3b5935"
		},
		"f26cb176-5a53-4188-9db8-ca33ef369acd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "661.8707364329692,116.3125 797.5,116.3125",
			"sourceSymbol": "d464b221-6e7e-4b74-8e13-a696bab91077",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "9608ac1c-4bcb-4205-8481-ffa7ea11ecb3"
		},
		"fdf965b7-c2e0-49c6-af60-fab4b18b9d76": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "663,117.125 663,36.25 231,36.25 231,88",
			"sourceSymbol": "d464b221-6e7e-4b74-8e13-a696bab91077",
			"targetSymbol": "b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d",
			"object": "90f9aa3d-a433-4849-a687-9836842c429d"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 9,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"scripttask": 2,
			"exclusivegateway": 2
		}
	}
}