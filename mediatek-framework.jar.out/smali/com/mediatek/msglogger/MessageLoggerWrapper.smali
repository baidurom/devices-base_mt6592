.class public Lcom/mediatek/msglogger/MessageLoggerWrapper;
.super Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper$Stub;
.source "MessageLoggerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageLoggerWrapper"

.field protected static mMsgLogger:Landroid/os/MessageMonitorLogger;


# direct methods
.method public constructor <init>(Landroid/os/MessageMonitorLogger;)V
    .locals 0
    .parameter "msgLogger"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper$Stub;-><init>()V

    .line 14
    sput-object p1, Lcom/mediatek/msglogger/MessageLoggerWrapper;->mMsgLogger:Landroid/os/MessageMonitorLogger;

    .line 15
    return-void
.end method


# virtual methods
.method public dumpAllMessageHistory()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mediatek/msglogger/MessageLoggerWrapper;->mMsgLogger:Landroid/os/MessageMonitorLogger;

    invoke-virtual {v0}, Landroid/os/MessageMonitorLogger;->dumpAllMessageHistory()V

    .line 23
    return-void
.end method

.method public dumpMSGHistorybyName(Ljava/lang/String;)V
    .locals 1
    .parameter "msgLoggerName"

    .prologue
    .line 26
    sget-object v0, Lcom/mediatek/msglogger/MessageLoggerWrapper;->mMsgLogger:Landroid/os/MessageMonitorLogger;

    invoke-virtual {v0, p1}, Landroid/os/MessageMonitorLogger;->dumpMessageHistory(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public unregisterMsgLogger(Ljava/lang/String;)V
    .locals 1
    .parameter "msgLoggerName"

    .prologue
    .line 18
    sget-object v0, Lcom/mediatek/msglogger/MessageLoggerWrapper;->mMsgLogger:Landroid/os/MessageMonitorLogger;

    invoke-virtual {v0, p1}, Landroid/os/MessageMonitorLogger;->unregisterMsgLogger(Ljava/lang/String;)V

    .line 19
    return-void
.end method
