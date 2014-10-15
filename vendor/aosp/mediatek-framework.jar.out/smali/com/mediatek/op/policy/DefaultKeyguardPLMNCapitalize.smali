.class public Lcom/mediatek/op/policy/DefaultKeyguardPLMNCapitalize;
.super Ljava/lang/Object;
.source "DefaultKeyguardPLMNCapitalize.java"

# interfaces
.implements Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedPlmnToCapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "plmn"

    .prologue
    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
