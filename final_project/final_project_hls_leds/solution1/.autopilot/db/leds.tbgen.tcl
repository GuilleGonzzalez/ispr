set C_TypeInfoList {{ 
"leds" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"row": [[],{ "pointer": "0"}] }, {"col": [[],{ "pointer": "1"}] }, {"in": [[], {"reference": "2"}] }],[],""], 
"2": [ "stream<ap_uint<7> >", {"hls_type": {"stream": [[[[],"0"]],"3"]}}], 
"0": [ "ap_uint<7>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 7}}]],""]}}], 
"1": [ "ap_uint<10>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 10}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName leds
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {leds}
set C_modelType { void 0 }
set C_modelArgList {
	{ row_V int 7 regular {pointer 1}  }
	{ col_V int 10 regular {pointer 1}  }
	{ in_V_V int 7 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row_V", "interface" : "wire", "bitwidth" : 7, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":6,"cElement": [{"cName": "row.V","cData": "uint7","bit_use": { "low": 0,"up": 6},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "col_V", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":9,"cElement": [{"cName": "col.V","cData": "uint10","bit_use": { "low": 0,"up": 9},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 7, "direction" : "READONLY", "bitSlice":[{"low":0,"up":6,"cElement": [{"cName": "in.V.V","cData": "uint7","bit_use": { "low": 0,"up": 6},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 7
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ row_V sc_out sc_lv 7 signal 0 } 
	{ col_V sc_out sc_lv 10 signal 1 } 
	{ in_V_V_dout sc_in sc_lv 7 signal 2 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ in_V_V_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "row_V", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_V", "role": "default" }} , 
 	{ "name": "col_V", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "col_V", "role": "default" }} , 
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "leds",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "row_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "col_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	leds {
		row_V {Type O LastRead -1 FirstWrite 2}
		col_V {Type O LastRead -1 FirstWrite 2}
		in_V_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "24"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	row_V { ap_none {  { row_V out_data 1 7 } } }
	col_V { ap_none {  { col_V out_data 1 10 } } }
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 7 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in_V_V { fifo_read 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
