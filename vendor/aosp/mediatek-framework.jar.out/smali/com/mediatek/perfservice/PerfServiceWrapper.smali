.class public Lcom/mediatek/perfservice/PerfServiceWrapper;
.super Ljava/lang/Object;
.source "PerfServiceWrapper.java"

# interfaces
.implements Lcom/mediatek/common/perfservice/IPerfServiceWrapper;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfServiceWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private sService:Lcom/mediatek/common/perfservice/IPerfService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    .line 57
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mContext:Landroid/content/Context;

    .line 58
    const-string v1, "mtk-perfservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/perfservice/IPerfService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    .line 60
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    if-nez v1, :cond_0

    .line 61
    const-string v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 159
    const-string v0, "PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] "

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

    .line 160
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 163
    const-string v0, "PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] ERR: "

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

    .line 164
    return-void
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .parameter "scenario"

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/perfservice/IPerfService;->boostDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnable(I)V
    .locals 3
    .parameter "scenario"

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/perfservice/IPerfService;->boostEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeout(II)V
    .locals 3
    .parameter "scenario"
    .parameter "timeout"

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/perfservice/IPerfService;->boostEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "packName"
    .parameter "className"
    .parameter "state"

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/common/perfservice/IPerfService;->notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisable(I)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/perfservice/IPerfService;->userDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisableAll()V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/common/perfservice/IPerfService;->userDisableAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnable(I)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/perfservice/IPerfService;->userEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeout(II)V
    .locals 3
    .parameter "handle"
    .parameter "timeout"

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/perfservice/IPerfService;->userEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userReg(II)I
    .locals 4
    .parameter "scn_core"
    .parameter "scn_freq"

    .prologue
    .line 101
    const/4 v1, -0x1

    .line 103
    .local v1, handle:I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/common/perfservice/IPerfService;->userReg(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userResetAll()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/common/perfservice/IPerfService;->userResetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnreg(I)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/common/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/perfservice/IPerfService;->userUnreg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
