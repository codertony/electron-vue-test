-- 消息体
CREATE TABLE "main"."Chat_A_0096932" (
  "ID" INTEGER,
  "version" INTEGER,
    "msgType" INTEGER, --消息体的类型
    "msgContent" INTEGER, --消息体的类型
  "msgSender" varchar(32), --A_或C_或g+消息发送者ID
  "senderNickName" varchar(32),
  "msgReceiver" varchar(32), --A_或C_或g+消息接收者ID
    "text" TEXT, --文本消息内容
  "msgDomain" TEXT,
  "msgFileName" TEXT,
  "msgFileUrl" TEXT,
  "msgDateCreated" varchar(32),
  "mcmEvent" INTEGER,
  "msgFileSize" varchar(32),
  "isAtMsg" INTEGER


  "messageId" varchar(64), --消息ID
  "timestamp" varchar(32), --消息发送或接收的时间(发送消息是本地时间，接收消息是服务器时间)
  "userData" varchar(256), --用户自定义数据（透传）
  "sessionId" varchar(32), --会话ID
  "isGroup" INTEGER, --此消息是否是群聊消息
  "messageState" INTEGER, --发送状态
  "isRead" INTEGER, --是否读取过
  "groupSenderName" varchar(32), --无效字段
  "senderName" varchar(32), --接收的消息发送者昵称
  "callText" TEXT, --未接来电消息-呼叫内容
  "calltype" INTEGER,--未接来电消息-呼叫类型
  "displayName" varchar(32), --文件消息体的显示名
  "serverTime" varchar(32), --文件消息体的服务器时间
  "localPath" TEXT, --文件消息体的本地文件路径
  "remotePath" TEXT, --文件消息体的服务器远程文件路径
  "fileLength" varchar(32), --文件消息体的文件长度, 以字节为单位
  "isCompress" INTEGER, --是否对文件进行压缩，默认是YES
  "originFileLength" varchar(32), --文件消息体的原文件长度, 以字节为单位(isCompress=YES，该值有内容)
  "mediaDownloadStatus" INTEGER, --附件是否下载完成
  "thumbnailLocalPath" TEXT, --缩略图或视频第一帧图片本地文件路径
  "thumbnailRemotePath" TEXT, --缩略图或视频第一帧图片服务器远程文件路径
  "url" TEXT, --PreviewMessageBody类型 抓取的内容的地址
  "title" TEXT,--PreviewMessageBody类型 抓取的文章表头
  "desc" TEXT,--PreviewMessageBody类型 抓取的文章描述
  "duration" INTEGER, --语音消息时长
  "coordinate" TEXT, --位置消息经纬度
  "isAted" INTEGER, --收到消息，是否被发送者@了
  "remark" TEXT, --备注
  "cellHeight" REAL, --消息cell高度
  "cellWidth" REAL, --消息cell宽度
  "readCount" INTEGER, --消息的已读数
  "isHD" INTEGER, --图片是否高清
  "HDLocalPath" varchar(32), --高清图片本地地址
  "HDRemotePath" varchar(32), --高清图片远程地址
  "HDDownloadStatus" INTEGER, --高清图下载状态
  "relateArray" TEXT, --相关问题列表
  "readTime" TEXT, --消息查看时间
  "serverCell_title_h" TEXT, --通知类型消息标题高度
  "serverCell_content_h" TEXT, --通知类型消息内容高度
  "extendMessageType" TEXT, --扩展消息类型
  PRIMARY KEY ("ID")
)

CREATE TABLE "main"."Chat_A_0096932" (
  "ID" INTEGER,
  "sender" varchar(32), --A_或C_或g+消息发送者ID
  "receiver" varchar(32), --A_或C_或g+消息接收者ID
  "messageId" varchar(64), --消息ID
  "timestamp" varchar(32), --消息发送或接收的时间(发送消息是本地时间，接收消息是服务器时间)
  "userData" varchar(256), --用户自定义数据（透传）
  "sessionId" varchar(32), --会话ID
  "isGroup" INTEGER, --此消息是否是群聊消息
  "messageState" INTEGER, --发送状态
  "isRead" INTEGER, --是否读取过
  "groupSenderName" varchar(32), --无效字段
  "senderName" varchar(32), --接收的消息发送者昵称
  "messageBodyType" INTEGER, --消息体的类型
  "callText" TEXT, --未接来电消息-呼叫内容
  "calltype" INTEGER,--未接来电消息-呼叫类型
  "displayName" varchar(32), --文件消息体的显示名
  "serverTime" varchar(32), --文件消息体的服务器时间
  "localPath" TEXT, --文件消息体的本地文件路径
  "remotePath" TEXT, --文件消息体的服务器远程文件路径
  "fileLength" varchar(32), --文件消息体的文件长度, 以字节为单位
  "isCompress" INTEGER, --是否对文件进行压缩，默认是YES
  "originFileLength" varchar(32), --文件消息体的原文件长度, 以字节为单位(isCompress=YES，该值有内容)
  "mediaDownloadStatus" INTEGER, --附件是否下载完成
  "thumbnailLocalPath" TEXT, --缩略图或视频第一帧图片本地文件路径
  "thumbnailRemotePath" TEXT, --缩略图或视频第一帧图片服务器远程文件路径
  "url" TEXT, --PreviewMessageBody类型 抓取的内容的地址
  "title" TEXT,--PreviewMessageBody类型 抓取的文章表头
  "desc" TEXT,--PreviewMessageBody类型 抓取的文章描述
  "duration" INTEGER, --语音消息时长
  "coordinate" TEXT, --位置消息经纬度
  "text" TEXT, --文本消息内容
  "isAted" INTEGER, --收到消息，是否被发送者@了
  "remark" TEXT, --备注
  "cellHeight" REAL, --消息cell高度
  "cellWidth" REAL, --消息cell宽度
  "readCount" INTEGER, --消息的已读数
  "isHD" INTEGER, --图片是否高清
  "HDLocalPath" varchar(32), --高清图片本地地址
  "HDRemotePath" varchar(32), --高清图片远程地址
  "HDDownloadStatus" INTEGER, --高清图下载状态
  "relateArray" TEXT, --相关问题列表
  "readTime" TEXT, --消息查看时间
  "serverCell_title_h" TEXT, --通知类型消息标题高度
  "serverCell_content_h" TEXT, --通知类型消息内容高度
  "extendMessageType" TEXT, --扩展消息类型
  PRIMARY KEY ("ID")
);

-- 会话列表
CREATE TABLE "main"."session" (
    "sessionId" TEXT NOT NULL, --会话ID
    "sessionName" varchar(32), --会话名称
    "avatar" varchar(64), --session的头像
    "draft" varchar(2048), --草稿
    "type" INTEGER, --不同的session类型
    "time" INTEGER, --创建时间 显示的时间 毫秒
    "unreadCount" INTEGER, --未读消息数
    "sumCount" INTEGER, --总消息数
    "isAt" INTEGER, --是否被@了
    "isTop" INTEGER, --会话是否置顶
    "isNoDisturb" INTEGER, --是否免打扰  YES:免打扰 NO:提示
    "perName" varchar(32),
    "perId" varchar(32),
    "perImage" varchar(62),
    "groupName" varchar(32),
    "groupId" varchar(32),
    "groupPerId" varchar(32),
    "time" INTEGER,
    "timeStr" varchar(32),
    "departmentName" varchar(32),
    "positionName" varchar(32),
    "mmdigest" varchar(32),
    PRIMARY KEY("sessionId")
  );

-- 群成员
CREATE TABLE "main"."GroupMember_g8000131899" (
  "memberId" varchar(32) NOT NULL, --群成员ID
  "groupId" varchar(32), --所属的群组ID
  "role" INTEGER, --所在群组角色
  PRIMARY KEY ("memberId")
);

-- 群信息
CREATE TABLE "main"."im_groupinfo" (
  "groupId" TEXT NOT NULL,
  "owner" varchar(32),
  "createdTime" varchar(32),
  "name" varchar(32),
  "declared" TEXT,
  "remark" TEXT,
  "scope" INTEGER,
  "mode" INEGER,
  "type" INTEGER,
  "isDismiss" INTEGER,
  "isDiscuss" INTEGER,
  "isPushAPNS" INTEGER,
  "isNotice" INTEGER,
  "province" varchar(32),
  "city" varchar(32),
  "memberCount" INTEGER,
  "groupIsDismiss" INTEGER,
  PRIMARY KEY ("groupId")
);

-- 群通知
CREATE TABLE "main"."im_groupnotice" (
  "ID" INTEGER,
  "sender" varchar(32),
  "groupId" varchar(32),
  "groupName" varchar(32),
  "messageType" INTEGER,
  "declared" varchar(32),
  "isRead" INTEGER,
  "admin" varchar(32),
  "nickName" varchar(32),
  "dateCreated" varchar(32),
  "confirm" INTEGER,
  "proposer" varchar(32),
  "member" varchar(32),
  "modifyDic" varchar(32),
  "adminNickName" varchar(32),
  "demoText" varchar(32),
  PRIMARY KEY ("ID")
);


-- 订阅号
CREATE TABLE "main"."subscription" (
  "subsId" TEXT NOT NULL,
  "subsName" varchar(32),
  "logoUrl" varchar(32),
  "introduction" varchar(256),
  "historyUrl" varchar(32),
  "hasIt" INTEGER,
  "isDel" INTEGER,
  "subscribeMenus" varchar(2048),
  "subsType" INTEGER,
  "updateTime" INTEGER,
  PRIMARY KEY ("subsId")
);
