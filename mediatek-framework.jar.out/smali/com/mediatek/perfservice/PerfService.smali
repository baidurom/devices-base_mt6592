.class public Lcom/mediatek/perfservice/PerfService;
.super Lcom/mediatek/common/perfservice/IPerfService$Stub;
.source "PerfService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfService"


# instance fields
.field private perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/common/perfservice/PerfServiceManager;)V
    .locals 0
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    .line 58
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 116
    const-string v0, "PerfService"

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

    .line 117
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 120
    const-string v0, "PerfService"

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

    .line 121
    return-void
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 1
    .parameter "scenario"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/perfservice/PerfServiceManager;->boostDisable(I)V

    .line 68
    return-void
.end method

.method public boostEnable(I)V
    .locals 1
    .parameter "scenario"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/perfservice/PerfServiceManager;->boostEnable(I)V

    .line 63
    return-void
.end method

.method public boostEnableTimeout(II)V
    .locals 1
    .parameter "scenario"
    .parameter "timeout"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/perfservice/PerfServiceManager;->boostEnableTimeout(II)V

    .line 73
    return-void
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "packName"
    .parameter "className"
    .parameter "state"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/common/perfservice/PerfServiceManager;->notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public userDisable(I)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/perfservice/PerfServiceManager;->userDisable(I)V

    .line 103
    return-void
.end method

.method public userDisableAll()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0}, Lcom/mediatek/common/perfservice/PerfServiceManager;->userDisableAll()V

    .line 113
    return-void
.end method

.method public userEnable(I)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/perfservice/PerfServiceManager;->userEnable(I)V

    .line 93
    return-void
.end method

.method public userEnableTimeout(II)V
    .locals 1
    .parameter "handle"
    .parameter "timeout"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/perfservice/PerfServiceManager;->userEnableTimeout(II)V

    .line 98
    return-void
.end method

.method public userReg(II)I
    .locals 1
    .parameter "scn_core"
    .parameter "scn_freq"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/perfservice/PerfServiceManager;->userReg(II)I

    move-result v0

    return v0
.end method

.method public userResetAll()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0}, Lcom/mediatek/common/perfservice/PerfServiceManager;->userResetAll()V

    .line 108
    return-void
.end method

.method public userUnreg(I)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfService;->perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/perfservice/PerfServiceManager;->userUnreg(I)V

    .line 88
    return-void
.end method
