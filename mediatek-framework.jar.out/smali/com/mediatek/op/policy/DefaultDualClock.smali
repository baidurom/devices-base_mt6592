.class public Lcom/mediatek/op/policy/DefaultDualClock;
.super Ljava/lang/Object;
.source "DefaultDualClock.java"

# interfaces
.implements Lcom/mediatek/common/policy/IDualClock;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDualClock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClockView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "container"

    .prologue
    .line 16
    const-string v0, "DefaultDualClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createClockView context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " return null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusViewLayout()I
    .locals 2

    .prologue
    .line 23
    const-string v0, "DefaultDualClock"

    const-string v1, "getStatusViewLayout layout res id = 17367158"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const v0, 0x1090076

    return v0
.end method

.method public resetPhonelistener()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public updateClockLayout()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
