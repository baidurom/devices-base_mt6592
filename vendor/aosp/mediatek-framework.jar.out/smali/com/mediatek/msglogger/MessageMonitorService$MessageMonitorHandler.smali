.class Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;
.super Landroid/os/Handler;
.source "MessageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/msglogger/MessageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/msglogger/MessageMonitorService;


# direct methods
.method public constructor <init>(Lcom/mediatek/msglogger/MessageMonitorService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/msglogger/MessageMonitorService$MessageMonitorHandler;->this$0:Lcom/mediatek/msglogger/MessageMonitorService;

    .line 74
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 80
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 84
    .local v3, msgLoggerName:Ljava/lang/String;
    sget-object v5, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 89
    .local v2, key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v5, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    sget-object v5, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v5, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;

    invoke-interface {v5, v3}, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;->unregisterMsgLogger(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2           #key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_1
    :goto_1
    const-string v5, "MessageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnregisterMsgLogger "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "MessageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnregisterMsgLogger fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v3           #msgLoggerName:Ljava/lang/String;
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 104
    .local v4, pid:I
    sget-object v5, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 109
    .restart local v2       #key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget v5, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerPid:I

    if-ne v4, v5, :cond_2

    .line 111
    sget-object v5, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;

    invoke-interface {v5}, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;->dumpAllMessageHistory()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .end local v2           #key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_3
    :goto_2
    const-string v5, "MessageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DumpAllMessageHistory  pid= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "MessageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DumpAllMessageHistory fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v4           #pid:I
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 123
    .restart local v3       #msgLoggerName:Ljava/lang/String;
    sget-object v5, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    .restart local v1       #iter:Ljava/util/Iterator;
    :goto_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 128
    .restart local v2       #key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v5, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    sget-object v5, Lcom/mediatek/msglogger/MessageMonitorService;->sMSGLoggerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;

    invoke-interface {v5, v3}, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;->dumpMSGHistorybyName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    .end local v2           #key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_4
    :goto_4
    const-string v5, "MessageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DumpMSGHistorybyName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    .restart local v2       #key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_5
    :try_start_3
    const-string v5, "MessageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Doesn\'t have msgLogger "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 138
    .end local v2           #key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :catch_2
    move-exception v0

    .line 139
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "MessageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DumpMSGHistorybyName fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 145
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v3           #msgLoggerName:Ljava/lang/String;
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 146
    .restart local v4       #pid:I
    const/16 v5, 0x10

    invoke-static {v4, v5}, Landroid/os/Process;->sendSignal(II)V

    .line 147
    const-string v5, "MessageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DumpCallStack pid= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
