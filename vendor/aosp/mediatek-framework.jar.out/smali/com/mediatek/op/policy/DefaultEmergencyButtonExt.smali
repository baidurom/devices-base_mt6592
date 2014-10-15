.class public Lcom/mediatek/op/policy/DefaultEmergencyButtonExt;
.super Ljava/lang/Object;
.source "DefaultEmergencyButtonExt.java"

# interfaces
.implements Lcom/mediatek/common/policy/IEmergencyButtonExt;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DefaultEmergencyButtonExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSlotIdForEmergencyDialer(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "slotId"

    .prologue
    .line 66
    return-void
.end method

.method public enableEccOnSlide()Z
    .locals 2

    .prologue
    .line 70
    const-string v0, "DefaultEmergencyButtonExt"

    const-string v1, "needShowEccOnSlide return false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isSimInService([ZI)Z
    .locals 5
    .parameter "isServiceSupportEcc"
    .parameter "slotId"

    .prologue
    .line 53
    array-length v1, p1

    .line 54
    .local v1, simSlotCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 55
    const-string v2, "DefaultEmergencyButtonExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimInService i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isServiceSupportEcc[i] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-boolean v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    .line 58
    const/4 v2, 0x1

    .line 61
    :goto_1
    return v2

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
