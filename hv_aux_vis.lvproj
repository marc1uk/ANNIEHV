<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="flush ZMQ standalone.vi" Type="VI" URL="../flush ZMQ standalone.vi"/>
		<Item Name="read error log.vi" Type="VI" URL="../read error log.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="String to Character Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/String to Character Array__ogtk.vi"/>
				<Item Name="Wait (ms)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/time/time.llb/Wait (ms)__ogtk.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="zeromq.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/zeromq/zeromq.lvlib"/>
			</Item>
			<Item Name="Append String to StdOut.vi" Type="VI" URL="../../../labviewtoolbox/Release 19/StdOut Operations/_subVIs/Append String to StdOut.vi"/>
			<Item Name="Append to Stdout.vi" Type="VI" URL="../../../labviewtoolbox/Release 19/StdOut Operations/Append to Stdout.vi"/>
			<Item Name="cursor hpos to column.vi" Type="VI" URL="../subvis/cursor hpos to column.vi"/>
			<Item Name="display matrix to spreadsheet string.vi" Type="VI" URL="../subvis/display matrix to spreadsheet string.vi"/>
			<Item Name="Error Encoder.vi" Type="VI" URL="../../../labviewtoolbox/Release 19/StdOut Operations/Error Encoder.vi"/>
			<Item Name="locate display.vi" Type="VI" URL="../subvis/locate display.vi"/>
			<Item Name="location cluster.ctl" Type="VI" URL="../subvis/location cluster.ctl"/>
			<Item Name="replace nulls.vi" Type="VI" URL="../subvis/replace nulls.vi"/>
			<Item Name="Setup For StdOut.vi" Type="VI" URL="../../../labviewtoolbox/Release 19/StdOut Operations/Setup For StdOut.vi"/>
			<Item Name="split columns.vi" Type="VI" URL="../subvis/split columns.vi"/>
			<Item Name="Terminate Std Out.vi" Type="VI" URL="../../../labviewtoolbox/Release 19/StdOut Operations/Terminate Std Out.vi"/>
			<Item Name="trim tabs.vi" Type="VI" URL="../subvis/trim tabs.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
