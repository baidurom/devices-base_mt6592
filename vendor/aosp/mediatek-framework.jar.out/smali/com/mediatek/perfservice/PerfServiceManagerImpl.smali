.class public Lcom/mediatek/perfservice/PerfServiceManagerImpl;
.super Ljava/lang/Object;
.source "PerfServiceManagerImpl.java"

# interfaces
.implements Lcom/mediatek/common/perfservice/PerfServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;,
        Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfServiceManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field final mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "PerfServiceManager"

    const-string v1, "load libperfservice_jni.so"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, "perfservice_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PerfServiceManager"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 96
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;-><init>(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mTimeList:Ljava/util/List;

    .line 99
    const-string v0, "Created and started PerfService thread"

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 414
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 418
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public static native nativePerfBoostDisable(I)I
.end method

.method public static native nativePerfBoostEnable(I)I
.end method

.method public static native nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native nativePerfUserScnDisable(I)I
.end method

.method public static native nativePerfUserScnDisableAll()I
.end method

.method public static native nativePerfUserScnEnable(I)I
.end method

.method public static native nativePerfUserScnReg(II)I
.end method

.method public static native nativePerfUserScnResetAll()I
.end method

.method public static native nativePerfUserScnUnreg(I)I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 2
    .parameter "scenario"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->access$000(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;I)V

    .line 120
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 122
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 123
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public boostEnable(I)V
    .locals 2
    .parameter "scenario"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->access$000(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;I)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 112
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 113
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method

.method public boostEnableTimeout(II)V
    .locals 2
    .parameter "scenario"
    .parameter "timeout"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->access$000(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;I)V

    .line 130
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 131
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 133
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 134
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "packName"
    .parameter "className"
    .parameter "state"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 142
    new-instance v1, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;-><init>(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public userDisable(I)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;I)V

    .line 166
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 168
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 169
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method

.method public userDisableAll()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 190
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 191
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public userEnable(I)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;I)V

    .line 157
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 158
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 159
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 160
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public userEnableTimeout(II)V
    .locals 2
    .parameter "handle"
    .parameter "timeout"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;I)V

    .line 175
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 176
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 177
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 178
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 179
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method

.method public userReg(II)I
    .locals 1
    .parameter "scn_core"
    .parameter "scn_freq"

    .prologue
    .line 147
    invoke-static {p1, p2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfUserScnReg(II)I

    move-result v0

    return v0
.end method

.method public userResetAll()V
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mHandler:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    return-void
.end method

.method public userUnreg(I)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 151
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfUserScnUnreg(I)I

    .line 152
    return-void
.end method
