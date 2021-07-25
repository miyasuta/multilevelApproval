{
	"contents": {
		"32ec83e1-af2a-41a3-b23e-8bde0a90d851": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "multilevelapproval",
			"subject": "${context.subject}",
			"businessKey": "${context.requestId}",
			"customAttributes": [{
				"id": "requestId",
				"label": "Request ID",
				"type": "string",
				"value": "${context.requestId}"
			}, {
				"id": "requester",
				"label": "Requester",
				"type": "string",
				"value": "${context.requester}"
			}],
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
					"name": "PrepareTask"
				},
				"09cbe691-fa00-44e6-a651-b7a2d7d62e11": {
					"name": "ApprovalTask"
				},
				"66bbc31e-be2f-405c-80a2-c96183713d70": {
					"name": "ProcessResult"
				},
				"16bc1335-3267-4d89-b130-703309bc9e50": {
					"name": "Is Approved"
				},
				"e70f3a6f-7eee-4964-b919-10f06d994f06": {
					"name": "Is Complete"
				},
				"3eb8e81f-d386-4271-b780-8a9f5462e39e": {
					"name": "ReworkTask"
				},
				"ca4880b8-9c77-4443-bf32-d6732931e350": {
					"name": "Next Processor"
				},
				"490d09e1-8d55-4685-bf67-69bfb72ff888": {
					"name": "ProcessRework"
				},
				"9ad73b7e-b57b-4729-8f3c-0a3f78cbee9c": {
					"name": "ProcessReworkResult"
				},
				"8c2777bc-3d84-41a1-a3fc-bc4830ddc277": {
					"name": "Is Cancelled"
				},
				"cf7ad83c-af6f-4a69-9758-d2ac8a3f9802": {
					"name": "UpdateContext"
				},
				"8ce63ad1-ab78-4f9a-b895-3863dc537f80": {
					"name": "UpdateContext"
				},
				"386a59b0-2255-4253-ae54-1efc832a2786": {
					"name": "InitializeContext"
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
					"name": "No"
				},
				"b9f29ece-8e03-437e-89a7-c72bcdf4c92c": {
					"name": "Yes"
				},
				"4428a882-ef8a-4bcd-b6b2-f288f00b2ce2": {
					"name": "No"
				},
				"4edebece-628d-4fc5-8c77-b8fb3063ae12": {
					"name": "Is Approver"
				},
				"478d62d9-1324-4584-a1ae-91df28737c45": {
					"name": "Is Requester"
				},
				"5e2e58f5-bec8-4bdc-87df-ef5062fa1864": {
					"name": "SequenceFlow23"
				},
				"9e07bcd6-161c-4290-9e4d-3b5402e82ad6": {
					"name": "SequenceFlow24"
				},
				"66331fd5-1239-4ef6-a96a-4246669005fe": {
					"name": "SequenceFlow26"
				},
				"8a0183f5-a5c1-41be-b8b5-28a1a7f7b452": {
					"name": "Cancelled"
				},
				"16873b68-304b-4a1f-8220-1397995adee6": {
					"name": "Not Cancelled"
				},
				"26d382a3-55f0-42e2-85d4-dde4b9df12fc": {
					"name": "SequenceFlow30"
				},
				"a20fc360-1b1f-4d4a-acfb-ba5aa74cfc37": {
					"name": "SequenceFlow31"
				},
				"764115c5-5cd2-4b3a-a0eb-a49d39ad20a5": {
					"name": "SequenceFlow32"
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
			"reference": "/scripts/multilevelApproval/PrepareTask.js",
			"id": "scripttask1",
			"name": "PrepareTask"
		},
		"09cbe691-fa00-44e6-a651-b7a2d7d62e11": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Multi Level Approval ${context.subject}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://workflowUIservice.demotaskUI/demo.taskUI",
			"recipientUsers": "${context.nextProcessor.userId}",
			"userInterfaceParams": [],
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
			"name": "Is Approved",
			"default": "4428a882-ef8a-4bcd-b6b2-f288f00b2ce2"
		},
		"e70f3a6f-7eee-4964-b919-10f06d994f06": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "Is Complete",
			"default": "90f9aa3d-a433-4849-a687-9836842c429d"
		},
		"3eb8e81f-d386-4271-b780-8a9f5462e39e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Multi Level Approval Rework ${context.subject}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://workflowUIservice.demotaskUI/demo.taskUI",
			"recipientUsers": "${context.nextProcessor.userId}",
			"userInterfaceParams": [],
			"id": "usertask2",
			"name": "ReworkTask"
		},
		"ca4880b8-9c77-4443-bf32-d6732931e350": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Next Processor",
			"default": "4edebece-628d-4fc5-8c77-b8fb3063ae12"
		},
		"490d09e1-8d55-4685-bf67-69bfb72ff888": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/multilevelApproval/ProcessRework.js",
			"id": "scripttask3",
			"name": "ProcessRework"
		},
		"9ad73b7e-b57b-4729-8f3c-0a3f78cbee9c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/multilevelApproval/ProcessReworkResult.js",
			"id": "scripttask4",
			"name": "ProcessReworkResult"
		},
		"8c2777bc-3d84-41a1-a3fc-bc4830ddc277": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "Is Cancelled",
			"default": "16873b68-304b-4a1f-8220-1397995adee6"
		},
		"cf7ad83c-af6f-4a69-9758-d2ac8a3f9802": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/multilevelApproval/UpdateContext.js",
			"id": "scripttask5",
			"name": "UpdateContext"
		},
		"8ce63ad1-ab78-4f9a-b895-3863dc537f80": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/multilevelApproval/UpdateContext.js",
			"id": "scripttask6",
			"name": "UpdateContext"
		},
		"386a59b0-2255-4253-ae54-1efc832a2786": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/multilevelApproval/InitializeContext.js",
			"id": "scripttask7",
			"name": "InitializeContext"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "386a59b0-2255-4253-ae54-1efc832a2786"
		},
		"5a2c470d-810e-4b48-bb3f-d06040989b22": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "a29ea060-1dba-4acb-8622-edaa8df33333",
			"targetRef": "ca4880b8-9c77-4443-bf32-d6732931e350"
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
			"targetRef": "8ce63ad1-ab78-4f9a-b895-3863dc537f80"
		},
		"9608ac1c-4bcb-4205-8481-ffa7ea11ecb3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.isComplete}",
			"id": "sequenceflow8",
			"name": "Complete",
			"sourceRef": "e70f3a6f-7eee-4964-b919-10f06d994f06",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"90f9aa3d-a433-4849-a687-9836842c429d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "No",
			"sourceRef": "e70f3a6f-7eee-4964-b919-10f06d994f06",
			"targetRef": "a29ea060-1dba-4acb-8622-edaa8df33333"
		},
		"b9f29ece-8e03-437e-89a7-c72bcdf4c92c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.isApproved}",
			"id": "sequenceflow10",
			"name": "Yes",
			"sourceRef": "16bc1335-3267-4d89-b130-703309bc9e50",
			"targetRef": "e70f3a6f-7eee-4964-b919-10f06d994f06"
		},
		"4428a882-ef8a-4bcd-b6b2-f288f00b2ce2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "No",
			"sourceRef": "16bc1335-3267-4d89-b130-703309bc9e50",
			"targetRef": "490d09e1-8d55-4685-bf67-69bfb72ff888"
		},
		"4edebece-628d-4fc5-8c77-b8fb3063ae12": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "Is Approver",
			"sourceRef": "ca4880b8-9c77-4443-bf32-d6732931e350",
			"targetRef": "09cbe691-fa00-44e6-a651-b7a2d7d62e11"
		},
		"478d62d9-1324-4584-a1ae-91df28737c45": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.isRequester}",
			"id": "sequenceflow22",
			"name": "Is Requester",
			"sourceRef": "ca4880b8-9c77-4443-bf32-d6732931e350",
			"targetRef": "3eb8e81f-d386-4271-b780-8a9f5462e39e"
		},
		"5e2e58f5-bec8-4bdc-87df-ef5062fa1864": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "3eb8e81f-d386-4271-b780-8a9f5462e39e",
			"targetRef": "9ad73b7e-b57b-4729-8f3c-0a3f78cbee9c"
		},
		"9e07bcd6-161c-4290-9e4d-3b5402e82ad6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "490d09e1-8d55-4685-bf67-69bfb72ff888",
			"targetRef": "a29ea060-1dba-4acb-8622-edaa8df33333"
		},
		"66331fd5-1239-4ef6-a96a-4246669005fe": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "9ad73b7e-b57b-4729-8f3c-0a3f78cbee9c",
			"targetRef": "cf7ad83c-af6f-4a69-9758-d2ac8a3f9802"
		},
		"8a0183f5-a5c1-41be-b8b5-28a1a7f7b452": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.isCancelled}",
			"id": "sequenceflow28",
			"name": "Cancelled",
			"sourceRef": "8c2777bc-3d84-41a1-a3fc-bc4830ddc277",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"16873b68-304b-4a1f-8220-1397995adee6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "Not Cancelled",
			"sourceRef": "8c2777bc-3d84-41a1-a3fc-bc4830ddc277",
			"targetRef": "a29ea060-1dba-4acb-8622-edaa8df33333"
		},
		"26d382a3-55f0-42e2-85d4-dde4b9df12fc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "SequenceFlow30",
			"sourceRef": "cf7ad83c-af6f-4a69-9758-d2ac8a3f9802",
			"targetRef": "8c2777bc-3d84-41a1-a3fc-bc4830ddc277"
		},
		"a20fc360-1b1f-4d4a-acfb-ba5aa74cfc37": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow31",
			"name": "SequenceFlow31",
			"sourceRef": "8ce63ad1-ab78-4f9a-b895-3863dc537f80",
			"targetRef": "16bc1335-3267-4d89-b130-703309bc9e50"
		},
		"764115c5-5cd2-4b3a-a0eb-a49d39ad20a5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "386a59b0-2255-4253-ae54-1efc832a2786",
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
				"fdf965b7-c2e0-49c6-af60-fab4b18b9d76": {},
				"60c9d2d0-c4c8-43bf-9f4d-02ccd853eb92": {},
				"4f5d3343-956d-4d42-b404-9df830896c62": {},
				"9782a756-db76-454e-b2fd-42a4553c46af": {},
				"921c2302-0706-458d-9e36-ccf2824c0c65": {},
				"1fdb2453-a661-46ac-b258-859429e09f91": {},
				"f2419179-b0cd-4af9-8196-ee1b0fcfbf55": {},
				"ab9a731b-69cd-4943-bbdd-b90153017965": {},
				"2c3b734e-2db0-4edb-81f3-5288fbbb7d20": {},
				"001a3ceb-77c4-40b5-b2b1-c938e573ab19": {},
				"7082fc52-d634-4025-917f-b81de0e6f83a": {},
				"98429410-a426-45d6-8642-5248ea52d271": {},
				"dba61d63-2bbc-44f7-9f80-0d6c5a104f92": {},
				"2915998c-f8e5-4611-9c0f-32a3ff1db635": {},
				"c2630bd6-bb12-4464-bbc9-e345c8974686": {},
				"d1f58817-66c6-4eb9-9027-bc8a677daf8d": {},
				"0724c4e6-636f-44c4-9506-e8fdcee8948a": {},
				"df7cbb64-0cde-4995-8169-4a5692d488fe": {},
				"2baa4d01-00be-4e36-89f5-8c199a5c7a6c": {},
				"a2f5a956-3a70-47bc-ae9a-bd2bc1652fa8": {},
				"ee886691-9923-463d-9266-4a0cdd52349b": {},
				"1f72788a-9b1d-4c79-aee4-4d8631d7340f": {}
			}
		},
		"1755a56d-3622-43e7-8340-0e86948076d5": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/multilevelApproval/sample.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -123,
			"y": 99,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1151,
			"y": 96,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-107,114.9375 8.620499687148111,114.9375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "ee886691-9923-463d-9266-4a0cdd52349b",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 108.24147286593848,
			"y": 84.75,
			"width": 100,
			"height": 60,
			"object": "a29ea060-1dba-4acb-8622-edaa8df33333"
		},
		"b7e8a2a0-8379-4e24-90e5-2aa9ffa9f911": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "158.24147286593848,115.9375 264.37073643296924,115.9375",
			"sourceSymbol": "b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d",
			"targetSymbol": "921c2302-0706-458d-9e36-ccf2824c0c65",
			"object": "5a2c470d-810e-4b48-bb3f-d06040989b22"
		},
		"edb7b679-2def-4ba0-8f4a-c0da2081ce8c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 325.37073643296924,
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
			"points": "375.37073643296924,117.125 544.3707364329692,117.125",
			"sourceSymbol": "edb7b679-2def-4ba0-8f4a-c0da2081ce8c",
			"targetSymbol": "d4cf7cd1-5825-431d-bd7d-7eff4a5fdb66",
			"object": "8b3778ee-2e26-4448-93d5-4e7e3add995e"
		},
		"d464b221-6e7e-4b74-8e13-a696bab91077": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 856.8707364329692,
			"y": 96.125,
			"object": "16bc1335-3267-4d89-b130-703309bc9e50"
		},
		"26a96471-f008-4588-b424-c03436b774a5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "544.3707364329692,117.125 702.8707364329692,117.125",
			"sourceSymbol": "d4cf7cd1-5825-431d-bd7d-7eff4a5fdb66",
			"targetSymbol": "2baa4d01-00be-4e36-89f5-8c199a5c7a6c",
			"object": "cffc350d-05a3-4bab-8728-72d0ba3b5935"
		},
		"f26cb176-5a53-4188-9db8-ca33ef369acd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1043.8707364329694,117.8125 1151.5,117.8125",
			"sourceSymbol": "60c9d2d0-c4c8-43bf-9f4d-02ccd853eb92",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "9608ac1c-4bcb-4205-8481-ffa7ea11ecb3"
		},
		"fdf965b7-c2e0-49c6-af60-fab4b18b9d76": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1023.3707364329694,96.625 1023.3707275390625,34.25 153,34.25 153,86",
			"sourceSymbol": "60c9d2d0-c4c8-43bf-9f4d-02ccd853eb92",
			"targetSymbol": "b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d",
			"object": "90f9aa3d-a433-4849-a687-9836842c429d"
		},
		"60c9d2d0-c4c8-43bf-9f4d-02ccd853eb92": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1002.3707364329694,
			"y": 96.125,
			"object": "e70f3a6f-7eee-4964-b919-10f06d994f06"
		},
		"4f5d3343-956d-4d42-b404-9df830896c62": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "878.1207364329692,117.125 1023.1207364329694,117.125",
			"sourceSymbol": "d464b221-6e7e-4b74-8e13-a696bab91077",
			"targetSymbol": "60c9d2d0-c4c8-43bf-9f4d-02ccd853eb92",
			"object": "b9f29ece-8e03-437e-89a7-c72bcdf4c92c"
		},
		"9782a756-db76-454e-b2fd-42a4553c46af": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 324.87073643296924,
			"y": 206.125,
			"width": 100,
			"height": 60,
			"object": "3eb8e81f-d386-4271-b780-8a9f5462e39e"
		},
		"921c2302-0706-458d-9e36-ccf2824c0c65": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 243.37073643296924,
			"y": 96.125,
			"object": "ca4880b8-9c77-4443-bf32-d6732931e350"
		},
		"1fdb2453-a661-46ac-b258-859429e09f91": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "875.4838562011719,97.5625 875.4838562011719,56.5",
			"sourceSymbol": "d464b221-6e7e-4b74-8e13-a696bab91077",
			"targetSymbol": "f2419179-b0cd-4af9-8196-ee1b0fcfbf55",
			"object": "4428a882-ef8a-4bcd-b6b2-f288f00b2ce2"
		},
		"f2419179-b0cd-4af9-8196-ee1b0fcfbf55": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 823,
			"y": -3,
			"width": 100,
			"height": 60,
			"object": "490d09e1-8d55-4685-bf67-69bfb72ff888"
		},
		"ab9a731b-69cd-4943-bbdd-b90153017965": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "264.37073643296924,117.125 375.37073643296924,117.125",
			"sourceSymbol": "921c2302-0706-458d-9e36-ccf2824c0c65",
			"targetSymbol": "edb7b679-2def-4ba0-8f4a-c0da2081ce8c",
			"object": "4edebece-628d-4fc5-8c77-b8fb3063ae12"
		},
		"2c3b734e-2db0-4edb-81f3-5288fbbb7d20": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "264.37073643296924,117.125 264.3707275390625,236.125 325.37073643296924,236.125",
			"sourceSymbol": "921c2302-0706-458d-9e36-ccf2824c0c65",
			"targetSymbol": "9782a756-db76-454e-b2fd-42a4553c46af",
			"object": "478d62d9-1324-4584-a1ae-91df28737c45"
		},
		"001a3ceb-77c4-40b5-b2b1-c938e573ab19": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "374.87073643296924,236.125 544.3707275390625,236.125",
			"sourceSymbol": "9782a756-db76-454e-b2fd-42a4553c46af",
			"targetSymbol": "98429410-a426-45d6-8642-5248ea52d271",
			"object": "5e2e58f5-bec8-4bdc-87df-ef5062fa1864"
		},
		"7082fc52-d634-4025-917f-b81de0e6f83a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "873,34 156.241455078125,34 156.24147286593848,84.25",
			"sourceSymbol": "f2419179-b0cd-4af9-8196-ee1b0fcfbf55",
			"targetSymbol": "b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d",
			"object": "9e07bcd6-161c-4290-9e4d-3b5402e82ad6"
		},
		"98429410-a426-45d6-8642-5248ea52d271": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 494.3707275390625,
			"y": 206.125,
			"width": 100,
			"height": 60,
			"object": "9ad73b7e-b57b-4729-8f3c-0a3f78cbee9c"
		},
		"dba61d63-2bbc-44f7-9f80-0d6c5a104f92": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 856.8707275390625,
			"y": 215.125,
			"object": "8c2777bc-3d84-41a1-a3fc-bc4830ddc277"
		},
		"2915998c-f8e5-4611-9c0f-32a3ff1db635": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "544.3707275390625,236.125 702.8707275390625,236.125",
			"sourceSymbol": "98429410-a426-45d6-8642-5248ea52d271",
			"targetSymbol": "0724c4e6-636f-44c4-9506-e8fdcee8948a",
			"object": "66331fd5-1239-4ef6-a96a-4246669005fe"
		},
		"c2630bd6-bb12-4464-bbc9-e345c8974686": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "877.8707275390625,236.125 1168.5,236.125 1168.5,130.5",
			"sourceSymbol": "dba61d63-2bbc-44f7-9f80-0d6c5a104f92",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "8a0183f5-a5c1-41be-b8b5-28a1a7f7b452"
		},
		"d1f58817-66c6-4eb9-9027-bc8a677daf8d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "877.8707275390625,236.125 877.8707275390625,307.125 148,307.125 148,142",
			"sourceSymbol": "dba61d63-2bbc-44f7-9f80-0d6c5a104f92",
			"targetSymbol": "b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d",
			"object": "16873b68-304b-4a1f-8220-1397995adee6"
		},
		"0724c4e6-636f-44c4-9506-e8fdcee8948a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 652.8707275390625,
			"y": 206.125,
			"width": 100,
			"height": 60,
			"object": "cf7ad83c-af6f-4a69-9758-d2ac8a3f9802"
		},
		"df7cbb64-0cde-4995-8169-4a5692d488fe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "702.8707275390625,236.125 877.8707275390625,236.125",
			"sourceSymbol": "0724c4e6-636f-44c4-9506-e8fdcee8948a",
			"targetSymbol": "dba61d63-2bbc-44f7-9f80-0d6c5a104f92",
			"object": "26d382a3-55f0-42e2-85d4-dde4b9df12fc"
		},
		"2baa4d01-00be-4e36-89f5-8c199a5c7a6c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 652.8707364329692,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "8ce63ad1-ab78-4f9a-b895-3863dc537f80"
		},
		"a2f5a956-3a70-47bc-ae9a-bd2bc1652fa8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "702.8707364329692,117.125 877.8707364329692,117.125",
			"sourceSymbol": "2baa4d01-00be-4e36-89f5-8c199a5c7a6c",
			"targetSymbol": "d464b221-6e7e-4b74-8e13-a696bab91077",
			"object": "a20fc360-1b1f-4d4a-acfb-ba5aa74cfc37"
		},
		"ee886691-9923-463d-9266-4a0cdd52349b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -41.37950031285189,
			"y": 84.875,
			"width": 100,
			"height": 60,
			"object": "386a59b0-2255-4253-ae54-1efc832a2786"
		},
		"1f72788a-9b1d-4c79-aee4-4d8631d7340f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "8.620499687148111,114.8125 158.24147286593848,114.8125",
			"sourceSymbol": "ee886691-9923-463d-9266-4a0cdd52349b",
			"targetSymbol": "b2f6aa28-4b0f-4ff4-8dd5-36f80e21f32d",
			"object": "764115c5-5cd2-4b3a-a0eb-a49d39ad20a5"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 32,
			"startevent": 1,
			"endevent": 1,
			"usertask": 3,
			"scripttask": 7,
			"exclusivegateway": 5
		}
	}
}