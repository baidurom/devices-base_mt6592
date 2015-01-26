.class public Lcom/android/internal/util/ButtonHelper$ButtonConfig;
.super Ljava/lang/Object;
.source "ButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonConfig"
.end annotation


# instance fields
.field public clickAction:Lcom/android/internal/util/ButtonHelper$Action;

.field public longPressAction:Lcom/android/internal/util/ButtonHelper$Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
