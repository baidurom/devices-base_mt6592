.class Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;
.super Ljava/lang/Object;
.source "WorldPhoneOm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 809
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 807
    check-cast p1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .end local p1
    check-cast p2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;->compare(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I

    move-result v0

    return v0
.end method
