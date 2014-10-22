package com.EWaiter.util;

public enum ErrorCode {
	OK(0, "成功"),
	
	BAD_VCODE(100, "验证码错误"),
	SESSION_EXPIRED(101, "会话超时"),
	AUTH_FAILED(102, "身份验证失败"),
	INTERNAL_ERROR(103, "服务器内部错误"),
	VCODE_EXPIRED(104, "验证码超时，请重新获取验证码"),
	FILE_TOO_LARGE(105, "文件太大"),
	IMPORT_BUSY(106, "另一个导入操作正在进行中"),
	
	INVALID_DATA(1000, "无效的数据"),
	INCORRECT_PASSWORD(1001, "密码错误"),
	BAD_TIME_STAMP(1002, "无效的时间戳"),
	BAD_REQUEST_CODE(1003, "无效的请求"),
	SOCKET_RECEIVE_ERROR(1006, "接收错误"),	
	SOCKET_SEND_ERROR(1007, "发送错误"),
	NULL_POINTER(1008, "空指针"),
	SOCKET_CREATE_ERROR(1009, "无法创建socket"),
	
	BAD_INTERNET_ADDRESS(1010, "无效的IP地址"),
	SOCKET_CONNECT_ERROR(1011, "无法与后台服务建立连接"),
	SOCKET_CONNECT_TIMEDOUT(1012, "与后台服务连接超时"),
	BAD_SIZE(1013, "无效的大小"),
	UNKNOWN_ERROR(1014, "未知错误"),
	TOO_FEW_ARGUMENTS(1015, "参数太少"),
	TOO_MANY_ARGUMENTS(1016, "参数太多"),
	USER_NOT_EXISTED(1017, "用户不存在"),
	PLUGIN_INVOKE_ERROR(1018, ""),
	DB_OPEN(1019, "数据库打开失败"),
	
	DB_QUERY(1020, "数据库查询失败"),
	CONNECTION_RESET(1021, "连接被断开"),
	PLUGIN_OPEN_ERROR(1022, "无法打开插件"),
	PLUGIN_NOT_AVAILABLE(1023, "插件暂时不可用"),
	OUT_OF_MEMORY(1024, "内存不足"),
	PLUGIN_CRASHED(1025, "插件已崩溃"),
	PIPE_OPEN_ERROR(1026, "无法创建管道"),
	PIPE_READ_ERROR(1027, "无法从管道读取"),
	PIPE_WRITE_ERROR(1028, "无法写入管道"),
	BAD_MD5(1029, "无效的MD5"),
	
	BAD_OFFSET(1030, "无效的偏移量"),
	ACCESS_DENIED(1031, "拒绝访问"),
	FILE_NOT_EXISTED(1032, "文件不存在"),
	FILE_WRITE_ERROR(1033, "无法写入文件"),
	FILE_READ_ERROR(1034, "无法读取文件"),
	FILE_OPEN_ERROR(1035, "无法打开文件"),
	BAD_SIGNATURE(1036, "无效的签名"),
	SOCKET_SEND_TIMEDOUT(1037, "发送超时"),
	SOCKET_RECEIVE_TIMEDOUT(1038, "接收超时"),
	EXECUTE_EXTERNAL_ERROR(1039, "无法执行外部程序"),
	
	FILE_EXISTED(1040, "文件已存在"),
	BAD_FLAG(1041, "无效的标识"),
	FILE_BUSY(1042, "文件忙"),
	PEER_TIMEDOUT(1043, "对方超时"),
	PEER_OFFLINE(1044, "对方不在线"),
	BAD_PLUGIN(1045, "无效的插件"),
	BAD_ARGUMENT(1046, "无效的参数"),
	GENERIC_ERROR(1047, "一般错误"),
	SOCKET_BIND_ERROR(1048, "无法绑定端口"),
	SOCKET_LISTEN_ERROR(1049, "无法监听端口"),
	
	BAD_ORDER(1050, "无效的指令"),
	SOCKET_ACCEPT_ERROR(1051, "无法接受新连接"),
	USER_LOCKED(1052, "用户被锁定"),
	BAD_COMMAND(1053, "无效的命令"),
	BROKEN_PIPE(1054, "通信中断"),
	INTERRUPTED(1055, "执行中断"),
	PLUGIN_GENERIC_ERROR(1056, "一般性插件错误"),
	USER_EXISTED(1057, "用户已存在"),
	PEER_DISCONNECTED(1058, "对方已断开"),
	
	OBJECT_EXISTED(1060, "对象已存在"),
	OBJECT_NOT_EXISTED(1061, "对象不存在"),
	INVALID_OBJECT(1062, "无效的对象"),
	NO_TRUCK_AVALAIBLE(1063, "暂无空闲车辆"),
	UNAUTHORIZED(1064, "未授权"),
	BAD_TOKEN(1065, "无效的令牌"),
	UNSYNC(1066, "不同步"),
	;
	
	
	private ErrorCode(int id, String detail) {
		this.id = id;
		this.detail = detail;
	}
	
	private int id = 0;
	private String detail = "";
	
	public static ErrorCode getCodeById(int id) {
		for (ErrorCode code : ErrorCode.values()) {
			if (code.getId() == id) {
				return code;
			}
		}
		
		return null;
	}
	
	public boolean isOK() {
		return this == OK;
	}
	
	public int getId() {
		return id;
	}

	public String getDetail() {
		return detail;
	}
}
