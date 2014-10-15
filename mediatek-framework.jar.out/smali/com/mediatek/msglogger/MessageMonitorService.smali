.class public Lcom/mediatek/msglogger/MessageMonitorService;
.super Lcom/mediatek/common/msgmonitorservice/IMessageLogger$Stub;
.source "MessageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;
    }
.end annotation


# static fields
.field protected static final DUMP_ALL_MSG_HISTORY:I = 0x7d2

.field protected static final DUMP_CALL_STACK:I = 0x7d4

.field protected static final DUMP_MSG_HISTORY_BY_NAME:I = 0x7d3

.field protected static final REGISTER_MSG_LOGGER:I = 0x7d0

.field private static final SIGNAL_STKFLT:I = 0x10

.field static final TAG:Ljava/lang/String; = "MessageMonitorService"

.field protected static final UNREGISTER_MSG_LOGGER:I = 0x7d1

.field private static mHandleThread:Landroid/os/HandlerThread;

.field protected static sMSGLoggerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/MessageMonitorLogger$MSGLoggerInfo;",
            "Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger$Stub;-><init>()V

    .line 32
    sget-object v0, Lcom/mediatek/msglogger/MessageMonitorService;->mHandleThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessageMonitorServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/msglogger/MessageMonitorService;->mHandleThread:Landroid/os/HandlerThread;

    .line 34
    sget-object v0, Lcom/mediatek/msglogger/MessageMonitorService;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v0, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    sget-object v1, Lcom/mediatek/msglogger/MessageMonitorService;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;-><init>(Lcom/mediatek/msglogger/MessageMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    .line 36
    const-string v0, "MessageMonitorService"

    const-string v1, "Create MessageMonitorServiceThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v0, "MessageMonitorService"

    const-string v1, "MessageMonitorServiceThread has exist. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dumpAllMessageHistory(I)V
    .locals 4
    .parameter "pid"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    const/16 v2, 0x7d2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 58
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void
.end method

.method public dumpCallStack(I)V
    .locals 4
    .parameter "pid"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    const/16 v2, 0x7d4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method

.method public dumpMSGHistorybyName(Ljava/lang/String;)V
    .locals 3
    .parameter "msgLoggerName"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 63
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method

.method public registerMsgLogger(Ljava/lang/String;IILcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;)V
    .locals 4
    .parameter "msgLoggerName"
    .parameter "pid"
    .parameter "tid"
    .parameter "callback"

    .prologue
    .line 43
    const-string v1, "MessageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisterMsgLogger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    invoke-direct {v0}, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;-><init>()V

    .line 45
    .local v0, msgLoggerInfo:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iput-object p1, v0, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    .line 46
    iput p2, v0, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerPid:I

    .line 47
    iput p3, v0, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerTid:I

    .line 48
    sget-object v1, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public unregisterMsgLogger(Ljava/lang/String;)V
    .locals 3
    .parameter "msgLoggerName"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 53
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/msglogger/MessageMonitorService;->mMsgMonitorHandler:Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    return-void
.end method
