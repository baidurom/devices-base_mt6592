.class public Lcom/mediatek/hdmi/HDMINative;
.super Ljava/lang/Object;
.source "HDMINative.java"

# interfaces
.implements Lcom/mediatek/common/hdmi/IHDMINative;


# static fields
.field public static final TAG:Ljava/lang/String; = "HdmiNative"

.field private static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    .line 52
    :try_start_0
    const-string v1, "mtkhdmi_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const-string v1, "HdmiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load libhdminative_jni.so "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 54
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 55
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HdmiNative"

    const-string v2, "HdmiNative load library fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableAudio(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 82
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->enableAudioNative(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native enableAudioNative(Z)Z
.end method

.method public enableCEC(Z)Z
    .locals 1
    .parameter "enbaled"

    .prologue
    .line 88
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->enableCecNative(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native enableCecNative(Z)Z
.end method

.method public enableHDCP(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 94
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->enableHdcpNative(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableHDMI(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 61
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->enableHdmiNative(Z)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableHDMIIPO(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 70
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->enableHdmiIpoNative(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native enableHdcpNative(Z)Z
.end method

.method public native enableHdmiIpoNative(Z)Z
.end method

.method public native enableHdmiNative(Z)Z
.end method

.method public enableVideo(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 76
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->enableVideoNative(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native enableVideoNative(Z)Z
.end method

.method public getCECAddr()[C
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMINative;->getCecAddrNative()[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCECCmd()[I
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMINative;->getCecCmdNative()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native getCecAddrNative()[C
.end method

.method public native getCecCmdNative()[I
.end method

.method public getDisplayType()I
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMINative;->getDisplayTypeNative()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native getDisplayTypeNative()I
.end method

.method public getEDID()[I
    .locals 1

    .prologue
    .line 164
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMINative;->getEdidNative()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native getEdidNative()[I
.end method

.method public hdmiPortraitEnable(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 152
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->hdmiPortraitEnableNative(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native hdmiPortraitEnableNative(Z)Z
.end method

.method public hdmiPowerEnable(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 146
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->hdmiPowerEnableNative(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native hdmiPowerEnableNative(Z)Z
.end method

.method public isHdmiForceAwake()Z
    .locals 1

    .prologue
    .line 158
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMINative;->isHdmiForceAwakeNative()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isHdmiForceAwakeNative()Z
.end method

.method public needSwDrmProtect()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMINative;->needSwDrmProtectNative()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native needSwDrmProtectNative()Z
.end method

.method public setAudioConfig(I)Z
    .locals 1
    .parameter "newValue"

    .prologue
    .line 106
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->setAudioConfigNative(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setAudioConfigNative(I)Z
.end method

.method public setCECAddr(B[BCC)Z
    .locals 1
    .parameter "laNum"
    .parameter "la"
    .parameter "pa"
    .parameter "svc"

    .prologue
    .line 130
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/hdmi/HDMINative;->setCecAddrNative(B[BCC)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCECCmd(BBC[BIB)Z
    .locals 1
    .parameter "initAddr"
    .parameter "destAddr"
    .parameter "opCode"
    .parameter "operand"
    .parameter "size"
    .parameter "enqueueOk"

    .prologue
    .line 138
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/hdmi/HDMINative;->setCecCmdNative(BBC[BIB)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setCecAddrNative(B[BCC)Z
.end method

.method public native setCecCmdNative(BBC[BIB)Z
.end method

.method public setDeepColor(II)Z
    .locals 1
    .parameter "colorSpace"
    .parameter "deepColor"

    .prologue
    .line 112
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/mediatek/hdmi/HDMINative;->setDeepColorNative(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setDeepColorNative(II)Z
.end method

.method public setHDCPKey([B)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 118
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->setHdcpKeyNative([B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHDMIDRMKey()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/HDMINative;->setHdmiDrmKeyNative()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setHdcpKeyNative([B)Z
.end method

.method public native setHdmiDrmKeyNative()Z
.end method

.method public setVideoConfig(I)Z
    .locals 1
    .parameter "newValue"

    .prologue
    .line 100
    sget-boolean v0, Lcom/mediatek/hdmi/HDMINative;->sLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HDMINative;->setVideoConfigNative(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setVideoConfigNative(I)Z
.end method
