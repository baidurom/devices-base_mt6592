.class final Lcom/mediatek/mom/d;
.super Lcom/mediatek/mom/ListenerTriggerBase;
.source "SourceFile"


# instance fields
.field private a:Lcom/mediatek/mom/n;


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 57
    invoke-static {}, Lcom/mediatek/mom/n;->a()Lcom/mediatek/mom/n;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/d;->a:Lcom/mediatek/mom/n;

    .line 61
    return-void
.end method

.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 57
    invoke-static {}, Lcom/mediatek/mom/n;->a()Lcom/mediatek/mom/n;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/d;->a:Lcom/mediatek/mom/n;

    .line 65
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getCallback()Landroid/os/IBinder;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getCallingPid()I

    move-result v2

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 145
    const-string v0, "param_permission_record"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 146
    const-string v4, "param_uid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 147
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getResult()I

    move-result v4

    .line 150
    :try_start_0
    iget-object v5, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "triggerCallbackFunc MoMS >> Caller with result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/mediatek/mom/p;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v2, v5, v6}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v1}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IRequestedPermissionCallback;

    move-result-object v1

    .line 156
    iget-object v5, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-interface {v1, v5, v3, v4}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->onPermissionCheckResult(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    iget-object v0, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    const-string v1, "triggerCallbackFunc MoMS << Caller"

    invoke-static {v3, v2, v0, v1}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void

    .line 157
    :catch_0
    move-exception v1

    .line 158
    const-string v1, "PermissionListenerTrigger"

    const-string v4, "onPermissionCheckResult() failed!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onTriggerListenerDone()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/mediatek/mom/d;->a()V

    .line 115
    return-void
.end method

.method public onTriggerListenerTimeout()V
    .locals 7

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    const-string v0, "param_uid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getCallingPid()I

    move-result v3

    .line 121
    const-string v0, "param_permission_record"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 123
    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const-string v4, "param_package"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v4, p0, Lcom/mediatek/mom/d;->a:Lcom/mediatek/mom/n;

    iget-object v5, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/mediatek/mom/n;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getCallback()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v0, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    const-string v1, "triggerListenerFunc MoMS >> MoMA is TIMEOUT"

    invoke-static {v2, v3, v0, v1}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/mediatek/mom/d;->a()V

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerListenerFunc MoMS >> MoMA is TIMEOUT, default result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getResult()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/mom/p;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public triggerListenerFunc()I
    .locals 14

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 68
    .line 70
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getFunc()Landroid/os/IBinder;

    move-result-object v5

    .line 72
    const-string v0, "param_package"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    const-string v0, "param_permission_record"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 74
    const-string v7, "param_flag"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 75
    const-string v8, "param_uid"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 76
    const-string v9, "param_data"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getCallingPid()I

    move-result v9

    .line 79
    if-eqz v5, :cond_3

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "with pr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " flag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 81
    iget-object v11, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "triggerListenerFunc MoMS >> MoMA "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v11, v10}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v5}, Lcom/mediatek/common/mom/IPermissionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IPermissionListener;

    move-result-object v5

    .line 86
    :try_start_0
    invoke-interface {v5, v0, v7, v8, v3}, Lcom/mediatek/common/mom/IPermissionListener;->onPermissionCheck(Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 92
    :goto_0
    if-ne v3, v4, :cond_1

    .line 95
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 96
    iget-object v2, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerListenerFunc MoMS << MoMA with result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/mediatek/mom/p;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v9, v2, v3}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/mediatek/mom/d;->a:Lcom/mediatek/mom/n;

    iget-object v3, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v0

    invoke-virtual {v2, v6, v3, v0}, Lcom/mediatek/mom/n;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    :cond_0
    :goto_2
    return v1

    .line 87
    :catch_0
    move-exception v3

    .line 88
    const-string v5, "PermissionListenerTrigger"

    const-string v7, "onPermissionCheck() failed!"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    goto :goto_0

    :cond_1
    move v1, v2

    .line 92
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 101
    iget-object v2, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    const-string v3, "triggerListenerFunc MoMS << MoMA"

    invoke-static {v8, v9, v2, v3}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/mediatek/mom/d;->a:Lcom/mediatek/mom/n;

    iget-object v3, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v0

    invoke-virtual {v2, v6, v3, v0}, Lcom/mediatek/mom/n;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 106
    :cond_3
    iget-object v0, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerListenerFunc MoMS >> MoMA FAILED due to null binder, return result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/mediatek/mom/p;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9, v0, v2}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
